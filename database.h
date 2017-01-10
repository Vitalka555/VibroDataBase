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
#define DATABASE_NAME                                    "vibro.db"
#define EQUIPMENTBASE                                    "EquipmentBase"
#define EQUIPMENTBASE_IDENTIFIER                         "Identifier" //вторая колонка
#define EQUIPMENTBASE_LEVEL                              "Level"
#define EQUIPMENTBASE_PREMISES                           "Premises"
#define EQUIPMENTBASE_EQUIPMENTNAME                      "EquipmentName"
#define EQUIPMENTBASE_NUMBEROFPOLIS                      "NumberOfPolis"
#define EQUIPMENTBASE_DRIVESPECIFICATION                 "DriveSpecification"
#define EQUIPMENTBASE_DRIVEPOWER                         "DrivePower"
#define EQUIPMENTBASE_ROTATIONFREQUANCYDRIVE             "RotationFrequencyDrive"
#define EQUIPMENTBASE_DRIVEMANUFACTURER                  "DriveManufacturer"
#define EQUIPMENTBASE_DRIVENUMBER                        "DriveNumber"
#define EQUIPMENTBASE_ROTATIONFREQUENCYAM                "RotationFrequencyAM"
#define EQUIPMENTBASE_ACTUATINGMECHANISMSPECIFICATION    "ActuatingMechanismSpecification"
#define EQUIPMENTBASE_ACTUATINGMECHANISMMANUFACTURER     "ActuatingMechanismManufacturer"
#define EQUIPMENTBASE_ACTUATINGMECHANISMNUMBER           "ActuatingMechanismNumber"
#define EQUIPMENTBASE_TRANSMISSIONMECHANISMSPECIFICATION "TransmissionMechanismSpecification"
#define EQUIPMENTBASE_TRANSMISSIONMECHANISMMANUFACTURER  "TransmissionMechanismManufacturer"
#define EQUIPMENTBASE_TRANSMISSIONMECHANISMNUMBER        "TransmissionMechanismNumber"
#define EQUIPMENTBASE_AMMANUFACTURER                     "AMManufacturer"
#define EQUIPMENTBASE_AMNUMBER                           "AMNumber"
#define EQUIPMENTBASE_NOMINALCONDITIONSPRESSURE          "NominalConditionsPressure"
#define EQUIPMENTBASE_NOMINALCONDITIONSCONSUMPTION       "NominalConditionsConsumption"
#define EQUIPMENTBASE_OPERATINGRANGEPRESSURE             "OperatingRangePressure"
#define EQUIPMENTBASE_OPERATINGRANGECONSUMPTION          "OperatingRangeConsumption"
#define EQUIPMENTBASE_SCHEME                             "Scheme"
#define EQUIPMENTBASE_PHOTO                              "Photo"
#define EQUIPMENTBASE_RADIALALIGNMENT                    "RadialAlignment"
#define EQUIPMENTBASE_ANGULARALIGNMENT                   "AngularAlignment"
#define EQUIPMENTBASE_RESTINGPAWSDRIVE                   "RestingPawsDrive"
#define EQUIPMENTBASE_RESTINGPAWSTM                      "RestingPawsTM"
#define EQUIPMENTBASE_RESTINGPAWSAM                      "RestingPawsAM"
#define EQUIPMENTBASE_NHH                                "NHH"
#define EQUIPMENTBASE_NOMNORMD                           "NomNormD"
#define EQUIPMENTBASE_NOMOGRD                            "NomOgrD"
#define EQUIPMENTBASE_NOMOTKAZD                          "NomOtkazD"
#define EQUIPMENTBASE_NOMNORMTM                          "NomNormTM"
#define EQUIPMENTBASE_NOMOGRTM                           "NomOgrTM"
#define EQUIPMENTBASE_NOMOTKAZTM                         "NomOtkazTM"
#define EQUIPMENTBASE_NOMNORMAM                          "NomNormAM"
#define EQUIPMENTBASE_NOMOGRAM                           "NomOgrAM"
#define EQUIPMENTBASE_NOMOTKAZAM                         "NomOtkazAM"
#define EQUIPMENTBASE_RDNORMD                            "RdNormD"
#define EQUIPMENTBASE_RDOGRD                             "RdOgrD"
#define EQUIPMENTBASE_RDOTKAZD                           "RdOtkazD"
#define EQUIPMENTBASE_RDNORMTM                           "RdNormTM"
#define EQUIPMENTBASE_RDOGRTM                            "RdOgrTM"
#define EQUIPMENTBASE_RDOTKAZTM                          "RdOtkazTM"
#define EQUIPMENTBASE_RDNORMAM                           "RdNormAM"
#define EQUIPMENTBASE_RDOGRAM                            "RdOgrAM"
#define EQUIPMENTBASE_RDOTKAZAM                          "RdOtkazAM"
#define EQUIPMENTBASE_TOTKAZD                            "TOtkazD"
#define EQUIPMENTBASE_TOTKAZTM                           "TOtkazTM"
#define EQUIPMENTBASE_TOTKAZAM                           "TOtkazAM"


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
    bool insertIntoTable(const QString &Identifier, const QString &Level,
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
                         const QString &TOtkazAM);        //(const QVariantList &data); //добавление записей в таблицу
    bool removeRecord(const int id);                //удаление записей
};

#endif // DATABASE_H
