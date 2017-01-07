#include "database.h"

DataBase::DataBase(QObject *parent) : QObject(parent)
{

}

DataBase::~DataBase()
{

}

/* Метод подключения к базе данных */
void DataBase::connectToDataBase()
{
    if(!QFile("D:/Projects/VibroDataBase/" DATABASE_NAME).exists())
    {
        this->restoreDataBase();
    }
    else
    {
        this->openDataBase();
    }
}

/* Метод восстановления */
bool DataBase::restoreDataBase()
{
    if(this->openDataBase())
    {
        return (this->creatTable()) ? true : false;
    }
    else
    {
        qDebug()<<"Не удалось восстановить базу данных";
        return false;
    }
    return false;
}

/* Метод открытия базы данных */
bool DataBase::openDataBase()
{
    db = QSqlDatabase::addDatabase("QSQLITE");
    db.setDatabaseName("D:/Projects/VibroDataBase/" DATABASE_NAME);
    if(db.open())
    {
        return true;
    }
    else
    {
        return false;
    }
}

/* Метод закрытия базы */
void DataBase::closeDataBase()
{
    db.close();
}

/* Метод создания таблиц */
bool DataBase::creatTable()
{
    QSqlQuery query;
    if(!query.exec( "CREATE TABLE " BAZAOBORUDOVANIA
                    " (id INTEGER PRIMARY KEY ASC AUTOINCREMENT, "
                    BAZAOBORUDOVANIA_IDENTIFIKATOR " TEXT,"
                    BAZAOBORUDOVANIA_CEH " TEXT)"
                    ))
    {
        qDebug()<<"Ошибка при создании базы";
        qDebug() << query.lastError().text();
        return false;
    }
    else
    {
        return true;
    }
    return false;
}

/* Метод вставки записи в таблицу */
bool DataBase::insertIntoTable(const QVariantList &data)
{
    QSqlQuery query;
        query.prepare("INSERT INTO " BAZAOBORUDOVANIA " ( " BAZAOBORUDOVANIA_IDENTIFIKATOR ", "
                      BAZAOBORUDOVANIA_CEH " ) "
                      "VALUES (:Identifikator, :Ceh)");
        query.bindValue(":Identifikator",       data[0].toString());
        query.bindValue(":Ceh",                 data[1].toString());
    if(!query.exec())
    {
        qDebug() << "Ошибка добавления записи " << BAZAOBORUDOVANIA;
        qDebug() << query.lastError().text();
        return false;
    }
    else
    {
        return true;
    }
    return false;
}
/* Метод вставки записи в таблицу */
bool DataBase::insertIntoTable(const QString &Identifikator, const QString &Ceh) //(const QVariantList &data)
{
    QVariantList data;
        data.append(Identifikator);
        data.append(Ceh);
        if(insertIntoTable(data))
            return true;
        else
            return false;
}

/* Метод удаления записи */
bool DataBase::removeRecord(const int id)
{
    QSqlQuery query;
    query.prepare(" DELETE FROM " BAZAOBORUDOVANIA " WHERE id = :ID ;");
    query.bindValue(":ID", id);
    if(!query.exec())
    {
        qDebug() << "Ошибка удаления записи " << BAZAOBORUDOVANIA;
        qDebug() << query.lastError().text();
        return false;
    }
    else
    {
        return true;
    }
    return false;
}
