#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    // Added these parameters (otherwise qsettings does not work)
    app.setOrganizationName("LHT_Interview");
    app.setOrganizationDomain("lhtinterview.com");
    app.setApplicationName("LHTTestQML");

    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/QMLTaskLHT/Main.qml"_qs);
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
