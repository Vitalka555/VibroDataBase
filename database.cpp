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
    if(!query.exec( "CREATE TABLE " EQUIPMENTBASE
                    " (id INTEGER PRIMARY KEY ASC AUTOINCREMENT, "
                    EQUIPMENTBASE_IDENTIFIER                         " TEXT,"
                    EQUIPMENTBASE_LEVEL                              " TEXT,"
                    EQUIPMENTBASE_PREMISES                           " TEXT,"
                    EQUIPMENTBASE_EQUIPMENTNAME                      " TEXT,"
                    EQUIPMENTBASE_NUMBEROFPOLIS                      " INTEGER,"
                    EQUIPMENTBASE_DRIVESPECIFICATION                 " TEXT,"
                    EQUIPMENTBASE_DRIVEPOWER                         " REAL,"
                    EQUIPMENTBASE_ROTATIONFREQUANCYDRIVE             " INTEGER,"
                    EQUIPMENTBASE_DRIVEMANUFACTURER                  " TEXT,"
                    EQUIPMENTBASE_DRIVENUMBER                        " TEXT,"
                    EQUIPMENTBASE_ROTATIONFREQUENCYAM                " INTEGER,"
                    EQUIPMENTBASE_ACTUATINGMECHANISMSPECIFICATION    " TEXT,"
                    EQUIPMENTBASE_ACTUATINGMECHANISMMANUFACTURER     " TEXT,"
                    EQUIPMENTBASE_ACTUATINGMECHANISMNUMBER           " TEXT,"
                    EQUIPMENTBASE_TRANSMISSIONMECHANISMSPECIFICATION " TEXT,"
                    EQUIPMENTBASE_TRANSMISSIONMECHANISMMANUFACTURER  " TEXT,"
                    EQUIPMENTBASE_TRANSMISSIONMECHANISMNUMBER        " TEXT,"
                    EQUIPMENTBASE_AMMANUFACTURER                     " TEXT,"
                    EQUIPMENTBASE_AMNUMBER                           " TEXT,"
                    EQUIPMENTBASE_NOMINALCONDITIONSPRESSURE          " REAL,"
                    EQUIPMENTBASE_NOMINALCONDITIONSCONSUMPTION       " REAL,"
                    EQUIPMENTBASE_OPERATINGRANGEPRESSURE             " REAL,"
                    EQUIPMENTBASE_OPERATINGRANGECONSUMPTION          " REAL,"
                    EQUIPMENTBASE_SCHEME                             " TEXT,"
                    EQUIPMENTBASE_PHOTO                              " TEXT)"
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
        query.prepare("INSERT INTO " EQUIPMENTBASE " ( " EQUIPMENTBASE_IDENTIFIER ", "
                      EQUIPMENTBASE_LEVEL ", "
                      EQUIPMENTBASE_PREMISES ", "
                      EQUIPMENTBASE_EQUIPMENTNAME ", "
                      EQUIPMENTBASE_NUMBEROFPOLIS ", "
                      EQUIPMENTBASE_DRIVESPECIFICATION ", "
                      EQUIPMENTBASE_DRIVEPOWER ", "
                      EQUIPMENTBASE_ROTATIONFREQUANCYDRIVE ", "
                      EQUIPMENTBASE_DRIVEMANUFACTURER ", "
                      EQUIPMENTBASE_DRIVENUMBER ", "
                      EQUIPMENTBASE_ROTATIONFREQUENCYAM ", "
                      EQUIPMENTBASE_ACTUATINGMECHANISMSPECIFICATION ", "
                      EQUIPMENTBASE_ACTUATINGMECHANISMMANUFACTURER ", "
                      EQUIPMENTBASE_ACTUATINGMECHANISMNUMBER ", "
                      EQUIPMENTBASE_TRANSMISSIONMECHANISMSPECIFICATION ", "
                      EQUIPMENTBASE_TRANSMISSIONMECHANISMMANUFACTURER ", "
                      EQUIPMENTBASE_TRANSMISSIONMECHANISMNUMBER ", "
                      EQUIPMENTBASE_AMMANUFACTURER ", "
                      EQUIPMENTBASE_AMNUMBER ", "
                      EQUIPMENTBASE_NOMINALCONDITIONSPRESSURE ", "
                      EQUIPMENTBASE_NOMINALCONDITIONSCONSUMPTION ", "
                      EQUIPMENTBASE_OPERATINGRANGEPRESSURE ", "
                      EQUIPMENTBASE_OPERATINGRANGECONSUMPTION ", "
                      EQUIPMENTBASE_SCHEME ", "
                      EQUIPMENTBASE_PHOTO " ) "
                      "VALUES (:Identifier, :Level, :Premises, :EquipmentName,"
                              ":NumberOfPolis, :DriveSpecification, :DrivePower, :RotationFrequencyDrive,"
                              ":DriveManufacturer, :DriveNumber, :RotationFrequencyAM, :ActuatingMechanismSpecification,"
                              ":ActuatingMechanismManufacturer, :ActuatingMechanismNumber, :TransmissionMechanismSpecification, :TransmissionMechanismManufacturer,"
                              ":TransmissionMechanismNumber, :AMManufacturer, :AMNumber, :NominalConditionsPressure,"
                              ":NominalConditionsConsumption, :OperatingRangePressure, :OperatingRangeConsumption, :Scheme,"
                              ":Photo)");
        query.bindValue(":Identifier",                          data[0].toString());
        query.bindValue(":Level",                               data[1].toString());
        query.bindValue(":Premises",                            data[2].toString());
        query.bindValue(":EquipmentName",                       data[3].toString());
        query.bindValue(":NumberOfPolis",                       data[4].toString());
        query.bindValue(":DriveSpecification",                  data[5].toString());
        query.bindValue(":DrivePower",                          data[6].toString());
        query.bindValue(":RotationFrequencyDrive",              data[7].toString());
        query.bindValue(":DriveManufacturer",                   data[8].toString());
        query.bindValue(":DriveNumber",                         data[9].toString());
        query.bindValue(":RotationFrequencyAM",                 data[10].toString());
        query.bindValue(":ActuatingMechanismSpecification",     data[11].toString());
        query.bindValue(":ActuatingMechanismManufacturer",      data[12].toString());
        query.bindValue(":ActuatingMechanismNumber",            data[13].toString());
        query.bindValue(":TransmissionMechanismSpecification",  data[14].toString());
        query.bindValue(":TransmissionMechanismManufacturer",   data[15].toString());
        query.bindValue(":TransmissionMechanismNumber",         data[16].toString());
        query.bindValue(":AMManufacturer",                      data[17].toString());
        query.bindValue(":AMNumber",                            data[18].toString());
        query.bindValue(":NominalConditionsPressure",           data[19].toString());
        query.bindValue(":NominalConditionsConsumption",        data[20].toString());
        query.bindValue(":OperatingRangePressure",              data[21].toString());
        query.bindValue(":OperatingRangeConsumption",           data[22].toString());
        query.bindValue(":Scheme",                              data[23].toString());
        query.bindValue(":Photo",                               data[24].toString());

    if(!query.exec())
    {
        qDebug() << "Ошибка добавления записи " << EQUIPMENTBASE;
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
bool DataBase::insertIntoTable(const QString &Identifier, const QString &Level,
                               const QString &Premises, const QString &EquipmentName,
                               const QString &NumberOfPolis, const QString &DriveSpecification,
                               const QString &DrivePower, const QString &RotationFrequencyDrive,
                               const QString &DriveManufacturer, const QString &DriveNumber,
                               const QString &RotationFrequencyAM, const QString &ActuatingMechanismSpecification,
                               const QString &ActuatingMechanismManufacturer, const QString &ActuatingMechanismNumber,
                               const QString &TransmissionMechanismSpecification, const QString &TransmissionMechanismManufacturer,
                               const QString &TransmissionMechanismNumber, const QString &AMManufacturer,
                               const QString &AMNumber, const QString &NominalConditionsPressure,
                               const QString &NominalConditionsConsumption, const QString &OperatingRangePressure,
                               const QString &OperatingRangeConsumption, const QString &Scheme,
                               const QString &Photo)
{
    QVariantList data;
        data.append(Identifier);
        data.append(Level);
        data.append(Premises);
        data.append(EquipmentName);
        data.append(NumberOfPolis);
        data.append(DriveSpecification);
        data.append(DrivePower);
        data.append(RotationFrequencyDrive);
        data.append(DriveManufacturer);
        data.append(DriveNumber);
        data.append(RotationFrequencyAM);
        data.append(ActuatingMechanismSpecification);
        data.append(ActuatingMechanismManufacturer);
        data.append(ActuatingMechanismNumber);
        data.append(TransmissionMechanismSpecification);
        data.append(TransmissionMechanismManufacturer);
        data.append(TransmissionMechanismNumber);
        data.append(AMManufacturer);
        data.append(AMNumber);
        data.append(NominalConditionsPressure);
        data.append(NominalConditionsConsumption);
        data.append(OperatingRangePressure);
        data.append(OperatingRangeConsumption);
        data.append(Scheme);
        data.append(Photo);

        if(insertIntoTable(data))
            return true;
        else
            return false;
}

/* Метод удаления записи */
bool DataBase::removeRecord(const int id)
{
    QSqlQuery query;
    query.prepare(" DELETE FROM " EQUIPMENTBASE " WHERE id = :ID ;");
    query.bindValue(":ID", id);
    if(!query.exec())
    {
        qDebug() << "Ошибка удаления записи " << EQUIPMENTBASE;
        qDebug() << query.lastError().text();
        return false;
    }
    else
    {
        return true;
    }
    return false;
}
