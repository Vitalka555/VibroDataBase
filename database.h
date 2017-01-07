#ifndef DATABASE_H
#define DATABASE_H

#include <QObject>
#include <QtSql/QSql>
#include <QtSql/QSqlDatabase>
#include <QtSql/QSqlQuery>
#include <QFile>
#include <QDebug>
#include <QSqlError>

/* Директивы имен базы, таблиц и их полей */
#define DATABASE_NAME                  "vibro.db"
#define BAZAOBORUDOVANIA               "BazaOborudovania"
#define BAZAOBORUDOVANIA_IDENTIFIKATOR "Identifikator" //вторая колонка
#define BAZAOBORUDOVANIA_CEH           "Ceh"
/* Первая колонка содержит Autoincrement ID */

class DataBase : public QObject
{
    Q_OBJECT
public:
    explicit DataBase(QObject *parent = 0);
    ~DataBase();
/* Методы для непосредственной работы с классом
 * Подключение к базе данных и вставка записей в таблицу */
    void connectToDataBase();
private:
    /* Объект базы данных */
    QSqlDatabase db;
private:
    /* Внутренние методы для работы с базой */
    bool openDataBase();    //открытие базы
    bool restoreDataBase(); //восстановление базы
    void closeDataBase();   //закрытие базы
    bool creatTable();      //создание таблиц в базе
signals:    
public slots:
    bool insertIntoTable(const QVariantList &data);
    bool insertIntoTable(const QString &Identifikator, const QString &Ceh);        //(const QVariantList &data); //добавление записей в таблицу
    bool removeRecord(const int id);                //удаление записей
};

#endif // DATABASE_H
