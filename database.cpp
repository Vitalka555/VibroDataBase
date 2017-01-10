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
                    EQUIPMENTBASE_NOMINALCONDITIONSPRESSURE          " TEXT,"
                    EQUIPMENTBASE_NOMINALCONDITIONSCONSUMPTION       " TEXT,"
                    EQUIPMENTBASE_OPERATINGRANGEPRESSURE             " TEXT,"
                    EQUIPMENTBASE_OPERATINGRANGECONSUMPTION          " TEXT,"
                    EQUIPMENTBASE_SCHEME                             " TEXT,"
                    EQUIPMENTBASE_PHOTO                              " TEXT,"
                    EQUIPMENTBASE_RADIALALIGNMENT                    " REAL,"
                    EQUIPMENTBASE_ANGULARALIGNMENT                   " REAL,"
                    EQUIPMENTBASE_RESTINGPAWSDRIVE                   " REAL,"
                    EQUIPMENTBASE_RESTINGPAWSTM                      " REAL,"
                    EQUIPMENTBASE_RESTINGPAWSAM                      " REAL,"
                    EQUIPMENTBASE_NHH                                " REAL,"
                    EQUIPMENTBASE_NOMNORMD                           " REAL,"
                    EQUIPMENTBASE_NOMOGRD                            " REAL,"
                    EQUIPMENTBASE_NOMOTKAZD                          " REAL,"
                    EQUIPMENTBASE_NOMNORMTM                          " REAL,"
                    EQUIPMENTBASE_NOMOGRTM                           " REAL,"
                    EQUIPMENTBASE_NOMOTKAZTM                         " REAL,"
                    EQUIPMENTBASE_NOMNORMAM                          " REAL,"
                    EQUIPMENTBASE_NOMOGRAM                           " REAL,"
                    EQUIPMENTBASE_NOMOTKAZAM                         " REAL,"
                    EQUIPMENTBASE_RDNORMD                            " REAL,"
                    EQUIPMENTBASE_RDOGRD                             " REAL,"
                    EQUIPMENTBASE_RDOTKAZD                           " REAL,"
                    EQUIPMENTBASE_RDNORMTM                           " REAL,"
                    EQUIPMENTBASE_RDOGRTM                            " REAL,"
                    EQUIPMENTBASE_RDOTKAZTM                          " REAL,"
                    EQUIPMENTBASE_RDNORMAM                           " REAL,"
                    EQUIPMENTBASE_RDOGRAM                            " REAL,"
                    EQUIPMENTBASE_RDOTKAZAM                          " REAL,"
                    EQUIPMENTBASE_TOTKAZD                            " REAL,"
                    EQUIPMENTBASE_TOTKAZTM                           " REAL,"
                    EQUIPMENTBASE_TOTKAZAM                           " REAL)"
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
                      EQUIPMENTBASE_PHOTO ", "
                      EQUIPMENTBASE_RADIALALIGNMENT ", "
                      EQUIPMENTBASE_ANGULARALIGNMENT ", "
                      EQUIPMENTBASE_RESTINGPAWSDRIVE ", "
                      EQUIPMENTBASE_RESTINGPAWSTM ", "
                      EQUIPMENTBASE_RESTINGPAWSAM ", "
                      EQUIPMENTBASE_NHH ", "
                      EQUIPMENTBASE_NOMNORMD ", "
                      EQUIPMENTBASE_NOMOGRD ", "
                      EQUIPMENTBASE_NOMOTKAZD ", "
                      EQUIPMENTBASE_NOMNORMTM ", "
                      EQUIPMENTBASE_NOMOGRTM ", "
                      EQUIPMENTBASE_NOMOTKAZTM ", "
                      EQUIPMENTBASE_NOMNORMAM ", "
                      EQUIPMENTBASE_NOMOGRAM ", "
                      EQUIPMENTBASE_NOMOTKAZAM ", "
                      EQUIPMENTBASE_RDNORMD ", "
                      EQUIPMENTBASE_RDOGRD ", "
                      EQUIPMENTBASE_RDOTKAZD ", "
                      EQUIPMENTBASE_RDNORMTM ", "
                      EQUIPMENTBASE_RDOGRTM ", "
                      EQUIPMENTBASE_RDOTKAZTM ", "
                      EQUIPMENTBASE_RDNORMAM ", "
                      EQUIPMENTBASE_RDOGRAM ", "
                      EQUIPMENTBASE_RDOTKAZAM ", "
                      EQUIPMENTBASE_TOTKAZD ", "
                      EQUIPMENTBASE_TOTKAZTM ", "
                      EQUIPMENTBASE_TOTKAZAM " ) "
                      "VALUES (:Identifier, :Level, :Premises, :EquipmentName,"
                              ":NumberOfPolis, :DriveSpecification, :DrivePower, :RotationFrequencyDrive,"
                              ":DriveManufacturer, :DriveNumber, :RotationFrequencyAM, :ActuatingMechanismSpecification,"
                              ":ActuatingMechanismManufacturer, :ActuatingMechanismNumber, :TransmissionMechanismSpecification, :TransmissionMechanismManufacturer,"
                              ":TransmissionMechanismNumber, :AMManufacturer, :AMNumber, :NominalConditionsPressure,"
                              ":NominalConditionsConsumption, :OperatingRangePressure, :OperatingRangeConsumption, :Scheme,"
                              ":Photo, :RadialAlignment, :AngularAlignment, :RestingPawsDrive,"
                              ":RestingPawsTM, :RestingPawsAM, :NHH, :NomNormD,"
                              ":NomOgrD, :NomOtkazD, :NomNormTM, :NomOgrTM,"
                              ":NomOtkazTM, :NomNormAM, :NomOgrAM, :NomOtkazAM,"
                              ":RdNormD, :RdOgrD, :RdOtkazD, :RdNormTM,"
                              ":RdOgrTM, :RdOtkazTM, :RdNormAM, :RdOgrAM,"
                              ":RdOtkazAM, :TOtkazD, :TOtkazTM, :TOtkazAM)");
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
        query.bindValue(":RadialAlignment",                     data[25].toString());
        query.bindValue(":AngularAlignment",                    data[26].toString());
        query.bindValue(":RestingPawsDrive",                    data[27].toString());
        query.bindValue(":RestingPawsTM",                       data[28].toString());
        query.bindValue(":RestingPawsAM",                       data[29].toString());
        query.bindValue(":NHH",                                 data[30].toString());
        query.bindValue(":NomNormD",                            data[31].toString());
        query.bindValue(":NomOgrD",                             data[32].toString());
        query.bindValue(":NomOtkazD",                           data[33].toString());
        query.bindValue(":NomNormTM",                           data[34].toString());
        query.bindValue(":NomOgrTM",                            data[35].toString());
        query.bindValue(":NomOtkazTM",                          data[36].toString());
        query.bindValue(":NomNormAM",                           data[37].toString());
        query.bindValue(":NomOgrAM",                            data[38].toString());
        query.bindValue(":NomOtkazAM",                          data[39].toString());
        query.bindValue(":RdNormD",                             data[40].toString());
        query.bindValue(":RdOgrD",                              data[41].toString());
        query.bindValue(":RdOtkazD",                            data[42].toString());
        query.bindValue(":RdNormTM",                            data[43].toString());
        query.bindValue(":RdOgrTM",                             data[44].toString());
        query.bindValue(":RdOtkazTM",                           data[45].toString());
        query.bindValue(":RdNormAM",                            data[46].toString());
        query.bindValue(":RdOgrAM",                             data[47].toString());
        query.bindValue(":RdOtkazAM",                           data[48].toString());
        query.bindValue(":TOtkazD",                             data[49].toString());
        query.bindValue(":TOtkazTM",                            data[50].toString());
        query.bindValue(":TOtkazAM",                            data[51].toString());


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
                               const QString &Photo, const QString &RadialAlignment, const QString &AngularAlignment,
                               const QString &RestingPawsDrive, const QString &RestingPawsTM, const QString &RestingPawsAM,
                               const QString &NHH, const QString &NomNormD, const QString &NomOgrD,
                               const QString &NomOtkazD, const QString &NomNormTM, const QString &NomOgrTM,
                               const QString &NomOtkazTM, const QString &NomNormAM, const QString &NomOgrAM,
                               const QString &NomOtkazAM, const QString &RdNormD, const QString &RdOgrD,
                               const QString &RdOtkazD, const QString &RdNormTM, const QString &RdOgrTM,
                               const QString &RdOtkazTM, const QString &RdNormAM, const QString &RdOgrAM,
                               const QString &RdOtkazAM, const QString &TOtkazD, const QString &TOtkazTM,
                               const QString &TOtkazAM)
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
        data.append(RadialAlignment);
        data.append(AngularAlignment);
        data.append(RestingPawsDrive);
        data.append(RestingPawsTM);
        data.append(RestingPawsAM);
        data.append(NHH);
        data.append(NomNormD);
        data.append(NomOgrD);
        data.append(NomOtkazD);
        data.append(NomNormTM);
        data.append(NomOgrTM);
        data.append(NomOtkazTM);
        data.append(NomNormAM);
        data.append(NomOgrAM);
        data.append(NomOtkazAM);
        data.append(RdNormD);
        data.append(RdOgrD);
        data.append(RdOtkazD);
        data.append(RdNormTM);
        data.append(RdOgrTM);
        data.append(RdOtkazTM);
        data.append(RdNormAM);
        data.append(RdOgrAM);
        data.append(RdOtkazAM);
        data.append(TOtkazD);
        data.append(TOtkazTM);
        data.append(TOtkazAM);


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
