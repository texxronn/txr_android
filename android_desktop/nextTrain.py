#!env python

import datetime

traintimes = [654, 701, 709, 716, 724, 754, 801, 809,816, 826, 841, 856, 911, 935, 941, 1645, 1651, 1700, 1715, 1721, 1730, 1745, 1751, 1800, 1806, 1815, 1821,1836,1844,1851, 1859, 1906, 1914, 1921, 1929, 1936, 2400]
now = datetime.datetime.now()
t = now.hour*100+now.minute

nexttrain = list(x for x in traintimes if x > t)[:3]
print(nexttrain)

