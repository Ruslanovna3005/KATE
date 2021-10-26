# 1) Создать переменную типа String

name = 'Kate'
print(name)

# 2) Создать переменную типа Integer

age = 27
print(age)

# 3) Создать переменную типа Float

weight = 45.7
print(weight)

# 4) Создать переменную типа Bytes

bt = b'123'
print(bt)

# 5) Создать переменную типа List

dates = ['Kate', 27, 45.7]
print(dates)

# 6) Создать переменную типа Tuple

permDates = ('Kate', 27, 45.7)
print(permDates)

# 7) Создать переменную типа Set

friend = set('Anastasia')
print(friend)

# 8. Создать переменную типа Frozen set

pet = frozenset('cat')
print(pet)

# 9) Создать переменную типа Dict

d = dict(mama='Iryna', papa='Ruslan')
print(d)

# 10) Вывести в консоль все выше перечисленные переменные с добавлением типа данных.

print(name, type(name))

print(age, type(age))

print(weight, type(weight))

print(bt, type(bt))

print(dates, type(dates))

print(permDates, type(permDates))

print(friend, type(friend))

print(pet, type(pet))

print(d, type(d))

# 11) Создать 2 переменные String, создать переменную в которой сканкатенируете эти переменные. Вывести в консоль.

a = 'Kateryna'
b = 'Ruslanovna'

c = a+b

print(c)

# 12) Вывести в одну строку переменные типа String и Integer используя “,” (Запятую)

print(a, age)

# 13) Вывести в одну строку переменные типа String и Integer используя “+” (Плюс)

print(a + str(age))