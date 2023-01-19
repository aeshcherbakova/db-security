with open('fill_goods.sql', 'a') as file:
    for i in range(8, 251):
        file.write("insert into good values ({0}, 'apple{0}', 1, {0}, 1, SYSDATE, SYSDATE + 365);\n".format(i))

with open('fill_vendors.sql', 'a') as file:
    for i in range(2, 251):
        file.write("insert into vendors_new values ({0}, 'vendor{0}', 'phone{0}', 'Moscow');\n".format(i))