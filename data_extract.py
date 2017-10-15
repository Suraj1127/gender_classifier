import pickle
file_handle = open("nepali_names.pickle","rb")
data = pickle.load(file_handle)
file_handle.close()
file_handle = open('names.txt', 'a')
for item in data[0]:
	if (len(item[0]) < 3):
		continue
	if (len(item[0]) == 3):
		file_handle.write(item[0][-1] + item[0][-2] + item[0][-3] + ' ' + str(item[1]) + '1\n')
	else:
		file_handle.write(item[0][-1] + item[0][-2] + item[0][-3] + item[0][-4] + str(item[1]) + '1\n')
for item in data[1]:
	if (len(item[0]) < 3):
		continue
	if (len(item[0]) == 3):
		file_handle.write(item[0][-1] + item[0][-2] + item[0][-3] + ' ' + str(item[2]) + '0\n')
	else: 
		file_handle.write(item[0][-1] + item[0][-2] + item[0][-3] + item[0][-4] + str(item[2]) + '0\n')
	
