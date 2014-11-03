m1 = Magazine.create!(name: 'Time')
r1 = Reader.create!(name: 'Tom')
r1.magazines << m1

m2 = Magazine.create!(name: 'Elle')
r2 = Reader.create!(name: 'Emily')
m2.readers << r2
