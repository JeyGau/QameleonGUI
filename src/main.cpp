#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <qameleon/hot_reloader.hpp>
#include <qameleon/qml_files_watcher.hpp>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    
    qameleon::hot_reload::HotReloader hotReloader(&engine, "/workspaces/QameleonGUI/src/views/ViewFactory.qml");
    qameleon::hot_reload::QmlFilesWatcher watcher;
    for (const auto& path : {"/workspaces/QameleonGUI/src/", "/usr/local/lib/qt/qml"}) {
        watcher.watch(path);
        engine.addImportPath(path);
    }
    QObject::connect(&watcher, &qameleon::hot_reload::QmlFilesWatcher::qmlFileChanged, 
        &watcher, [](const QString& path) { qDebug() << "File changed: " << path; });
    QObject::connect(&watcher, &qameleon::hot_reload::QmlFilesWatcher::qmlFileChanged, 
        &hotReloader, &qameleon::hot_reload::HotReloader::reload);


    engine.load(QUrl(QStringLiteral("/workspaces/QameleonGUI/src/main.qml")));

    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
