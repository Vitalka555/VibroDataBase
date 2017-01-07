#include "querymodel1.h"
#include <QDebug>
#include "database.h"

QueryModel1::QueryModel1(QObject *parent) : QSqlQueryModel(parent)
{
    this->updateModel();
}
/* Получение данных из модели */
QVariant QueryModel1::data(const QModelIndex & index, int role) const
{
    int columnId = role - Qt::UserRole - 1;
    QModelIndex modelIndex = this->index(index.row(), columnId);
    return  QSqlQueryModel::data(modelIndex, Qt::DisplayRole);
}
/* Получение имен ролей */
QHash<int, QByteArray> QueryModel1::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[IdRole] = "id";
    roles[IdentifierRole] = "Identifier";
    roles[LevelRole] = "Level";
    roles[PremisesRole] = "Premises";
    roles[EquipmentNameRole] = "EquipmentName";
    roles[NumberOfPolisRole] = "NumberOfPolis";
    roles[DriveSpecificationRole] = "DriveSpecification";
    roles[DrivePowerRole] = "DrivePower";
    roles[RotationFrequencyDriveRole] = "RotationFrequencyDrive";
    roles[DriveManufacturerRole] = "DriveManufacturer";
    roles[DriveNumberRole] = "DriveNumber";
    roles[RotationFrequencyAMRole] = "RotationFrequencyAM";
    roles[ActuatingMechanismSpecificationRole] = "ActuatingMechanismSpecification";
    roles[ActuatingMechanismManufacturerRole] = "ActuatingMechanismManufacturer";
    roles[ActuatingMechanismNumberRole] = "ActuatingMechanismNumber";
    roles[TransmissionMechanismSpecificationRole] = "TransmissionMechanismSpecification";
    roles[TransmissionMechanismManufacturerRole] = "TransmissionMechanismManufacturer";
    roles[TransmissionMechanismNumberRole] = "TransmissionMechanismNumber";
    roles[AMManufacturerRole] = "AMManufacturer";
    roles[AMNumberRole] = "AMNumber";
    roles[NominalConditionsPressureRole] = "NominalConditionsPressure";
    roles[NominalConditionsConsumptionRole] = "NominalConditionsConsumption";
    roles[OperatingRangePressureRole] = "OperatingRangePressure";
    roles[OperatingRangeConsumptionRole] = "OperatingRangeConsumption";
    roles[SchemeRole] = "Scheme";
    roles[PhotoRole] = "Photo";

    return roles;
}
/* Обновление таблицы в модели представления данных */
void QueryModel1::updateModel()
{
    this->setQuery("SELECT id, " EQUIPMENTBASE_IDENTIFIER ", " EQUIPMENTBASE_LEVEL ", "
                   EQUIPMENTBASE_PREMISES ", " EQUIPMENTBASE_EQUIPMENTNAME ", "
                   EQUIPMENTBASE_NUMBEROFPOLIS ", " EQUIPMENTBASE_DRIVESPECIFICATION ", "
                   EQUIPMENTBASE_DRIVEPOWER ", " EQUIPMENTBASE_ROTATIONFREQUANCYDRIVE ", "
                   EQUIPMENTBASE_DRIVEMANUFACTURER ", " EQUIPMENTBASE_DRIVENUMBER ", "
                   EQUIPMENTBASE_ROTATIONFREQUENCYAM ", " EQUIPMENTBASE_ACTUATINGMECHANISMSPECIFICATION ", "
                   EQUIPMENTBASE_ACTUATINGMECHANISMMANUFACTURER ", " EQUIPMENTBASE_ACTUATINGMECHANISMNUMBER ", "
                   EQUIPMENTBASE_TRANSMISSIONMECHANISMSPECIFICATION ", " EQUIPMENTBASE_TRANSMISSIONMECHANISMMANUFACTURER ", "
                   EQUIPMENTBASE_TRANSMISSIONMECHANISMNUMBER ", " EQUIPMENTBASE_AMMANUFACTURER ", "
                   EQUIPMENTBASE_AMNUMBER ", " EQUIPMENTBASE_NOMINALCONDITIONSPRESSURE ", "
                   EQUIPMENTBASE_NOMINALCONDITIONSCONSUMPTION ", " EQUIPMENTBASE_OPERATINGRANGEPRESSURE ", "
                   EQUIPMENTBASE_OPERATINGRANGECONSUMPTION ", " EQUIPMENTBASE_SCHEME ", "
                   EQUIPMENTBASE_PHOTO " FROM " EQUIPMENTBASE);
}
/* Получение id строки в модели представления данных */
int QueryModel1::getId(int row)
{    
    return this->data(this->index(row, 0), IdRole).toInt();    
}
