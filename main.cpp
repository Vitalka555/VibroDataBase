#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "database.h"
#include "querymodel1.h"
#include "datamapper1.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
//    QObject* root = engine.rootObjects().first();
    DataBase database;
    database.connectToDataBase();
    QueryModel1 *model1 = new QueryModel1();
    DataMapper1 *mapper1 = new DataMapper1();
        mapper1->setModel(model1);
//    QObject::connect(root, SIGNAL(qmlSignal()), model1, SLOT (updateModel()));
    engine.rootContext()->setContextProperty("QueryModel1", model1);
    engine.rootContext()->setContextProperty("mapper", mapper1);
    engine.rootContext()->setContextProperty("database", &database);
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
