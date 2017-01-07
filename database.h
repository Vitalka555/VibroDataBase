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
                         const QString &Photo);        //(const QVariantList &data); //добавление записей в таблицу
    bool removeRecord(const int id);                //удаление записей
};

#endif // DATABASE_H
