#ifndef DATAMAPPER1_H
#define DATAMAPPER1_H

#include <QObject>
#include <QPointer>
#include <QAbstractItemModel>
#include <QModelIndex>
#include <QQuickItem>

class DataMapper1Private;

class DataMapper1 : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int currentIndex READ currentIndex WRITE setCurrentIndex NOTIFY currentIndexChanged)
    Q_PROPERTY(int count READ count NOTIFY countChanged)
public:
    explicit DataMapper1(QObject *parent = 0);
    ~DataMapper1();

    /**
    * Удаляет все сопоставления, которые были созданы методом addMapping().
    */
    void clearMapping();

    // Удаляет сопоставление по объекту из QML слоя
    void removeMapping(QObject *object);

    // Методы доступа к свойствам
    int currentIndex() const;
    int count() const;

    // Возвращает им свойства, которое используется для обновления значений в элементе управления
    QByteArray mappedPropertyName(QObject *object) const;

    // Returns the section identifier that is mapped to the given control
    int mappedSection(QObject *object) const;

    // Возвращает элемент управления, которой сопоставлено с идентификатором секции в модели
    QObject * mappedControlAt(const int &section) const;

    // Возвращает модель данных, с которой работает QmlDataMapper
    QAbstractItemModel * model() const;

    // Устанавливает модель, с которой будет работать QmlDataMapper
    void setModel(QAbstractItemModel *model);

public Q_SLOTS:
    /**
    * Этот метод создаёт сопоставление между элементов упралвения и идентификатором секции
    * в модели данных.
    * Для SQL модели идентификатором секции является но роли колонки в модели представления данных
    * Данные будут установлены в свойство элемента управления, которые зависят от свойства данного элемента управления
    * Данный метод используется для установки элемента управления и секции без наименования свойства.
    * И в данном случае используется только наименование "text", в которое будут подставляться данные
    */
    void addMapping(QObject *object, const int &section);

    /**
    * Этот метод создаёт сопоставление между элементов упралвения и идентификатором секции
    * в модели данных.
    * Для SQL модели идентификатором секции является но роли колонки в модели представления данных
    * Данные будут подставляться в элемент управление в указанное свойство
    */
    void addMapping(QObject *object, const int &section, const QByteArray &propertyName);

    // Данный метод сбрасывает данные в элементе управления
    void revert();

    // Данный метод устанавливает индекс по заданном значению
    void setCurrentIndex(int index);

    // Данный метод устанавливает индекс первой строки
    void toFirst();

    // Данный метод устанавливает индекс последней строки
    void toLast();

    // Данный метод производит инкремент текущего индекса строки
    void toNext();

    // Данный метод производит декремент текущего индекса строки
    void toPrevious();

    // Обновление данных по заданном индексу
    void updateData(int index);

Q_SIGNALS:
    // Сигналы уведомления об изменении для свойств класса
    void currentIndexChanged(int index);
    void countChanged();

private:
    // Private класс, который скрыт API данного класса
    DataMapper1Private * const d;
    };

#endif // DATAMAPPER1_H
