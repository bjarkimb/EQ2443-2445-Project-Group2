import math
import cmath
import matplotlib.pyplot as plt
import numpy as np
import sys

def main():
	snr_data = []
	cfo_data = []
	csi_data = []
	ordinal = lambda n: "%d%s" % (n,"tsnrhtdd"[(math.floor(n/10)%10!=1)*(n%10<4)*n%10::4])

	with open("New2mstatic_newAnt_lms.txt") as f:
		for L in f:
			if "Extra Header:" in L:
				# Line starts with 'Extra Header:', create a new object
				snr_data.append({})
				cfo_data.append({})
				csi_data.append({})
			elif "snr:" in L:
				# Line is a key/value field, update current object
				k, v = map(str.strip, L.split(":", 1))
				# print k,v
				snr_data[-1] = v
			elif "freqofs:" in L:
				# Line is a key/value field, update current object
				k, v = map(str.strip, L.split(":", 1))
				# print k,v
				cfo_data[-1] = v
			elif "csi:" in L:
				L = L.replace('i','j')
				L = L.replace('+-','-')
				csi_data[-1] = L[7:-2].split(" ")
				for i in range(len(csi_data[-1])):
					csi_data[-1][i] = complex(csi_data[-1][i])
				
		
		#print(snr_data)
		#print(cfo_data)
		#print(csi_data)
		print(len(snr_data), ' packets.')

		# Different plots made depending on command line argument
		# Currently assumes only one argument.
		# The default is to plot the average magnitude of the CSI data
		# vs the magnitude of the CSI data of the first packet:
		if len(sys.argv) == 1 or sys.argv[1] == 'csi':
			# The magnitude of the first packets' CSI data:
			x = np.arange(0,len(csi_data[0]),1)
			y1=[]
			for i in x:
			 	y1.append(20*np.log10(abs(csi_data[0][i])))
			

			# Plot the average magnitude of the CSI data vs
			# the magnitude of the first realizations' CSI data:
			y = []
			for i in x:
				v = 0.0;
				for k in range(0,len(csi_data)):
					v = v + abs(csi_data[k][i])
				y.append(v/k)
			
			fig, ax = plt.subplots()
			ax.plot(x,y, color= '#1285D3')
			ax.plot(x,y1, '--', color='orange')
			plt.legend(['Average', 'First Realization'])
			fig.suptitle('Magnitude of CSI data')
			plt.show()

		# If the command line argument is 'csiparty'
		# plot the magnitude of all the CSI data vs
		# the average magnitude of the CSI data.
		if len(sys.argv) > 1 and sys.argv[1] == 'csiparty':
			x = np.arange(0,len(csi_data[0]),1)
			yALL = []
			y = []
			for i in x:
				v = 0.0;
				for k in range(0,len(csi_data)):
					v = v + abs(csi_data[k][i])
				y.append(20*np.log10(v/k))
			for i in range(0,len(csi_data)):
				temp = []
				for k in x:
					temp.append(20*np.log10(abs(csi_data[i][k])))
				yALL.append(temp)

			fig, ax = plt.subplots()
			for i in range(0,len(yALL)):
				ax.plot(x,yALL[i], linewidth=1.0)
			ax.plot(x,y, linewidth=5.0)
			fig.suptitle('CSI data of all packets + average')
			plt.ylabel('Magnitude [dB]')
			plt.xlabel('Subcarrier number')
			plt.show()

		# If the command line argument is 'snr'
		# then the SNR will be plotted.
		if len(sys.argv) > 1 and sys.argv[1] == 'snr':
			# Plot the SNR:
			y=np.asfarray(snr_data,float)
			x = np.arange(0, len(y), 1)
			fig, ax= plt.subplots()
			ax.plot(x,y)
			fig.suptitle('SNR')
			plt.show()

		# If the command line argument is 'cfo'
		# then the CFO will be plotted.
		if len(sys.argv) > 1 and sys.argv[1] == 'cfo':
			# Plot the SNR:
			y=np.asfarray(cfo_data,float)
			x = np.arange(0, len(y), 1)
			fig, ax= plt.subplots()
			ax.plot(x,y)
			fig.suptitle('CFO')
			plt.show()

		# Plot how the magnitude of the CSI data changes over time for subcarrier #x:

		if len(sys.argv) > 2 and sys.argv[1] == 'csiOT':
			x = np.arange(0,len(csi_data),1)
			y = []
			if sys.argv[2] == 'all':
				for i in x:
					temp = []
					for l in range(0,len(csi_data[i])):
						temp.append(20*np.log10(abs(csi_data[i][l])))
					y.append(temp)
				fig, ax= plt.subplots()
				ax.plot(x,y)
				plt.xlabel('Packet number')
				plt.ylabel('Magnitude [dB]')
				fig.suptitle('CSI of all subcarriers over time')

			elif int(sys.argv[2]) or int(sys.argv[2]) == 0:
				k = int(sys.argv[2])
				for i in x:
					y.append(20*np.log10(abs(csi_data[i][k])))
				fig, ax= plt.subplots()
				ax.plot(x,y)
				fig.suptitle(ordinal(k+1) + ' subcarrier CSI over time')
	
			plt.show()

		# Plot how the phase of the CSI data changes over time for subcarrier #x:
		if len(sys.argv) > 2 and sys.argv[1] == 'phaseOT':
			x = np.arange(0,len(csi_data),1)
			y = []

			if sys.argv[2] == 'all':
				for i in x:
					temp = []
					for l in range(0,len(csi_data[0])):
						temp.append(cmath.phase(csi_data[i][l]))
					y.append(temp)
				fig, ax= plt.subplots()
				ax.plot(x,y)
				plt.xlabel('Packet number')
				plt.ylabel('Phase')
				fig.suptitle('CSI of all subcarriers over time')

			elif int(sys.argv[2]) or int(sys.argv[2]) == 0:
				k = int(sys.argv[2])
				for i in x:
					y.append(cmath.phase(csi_data[i][k]))
				fig, ax= plt.subplots()
				ax.plot(x,y)
				fig.suptitle(ordinal(k+1) + ' subcarrier CSI over time')
	
			plt.show()


		if len(sys.argv) > 1 and sys.argv[1] == 'phase':
			x = np.arange(0,len(csi_data[0]),1)
			y=[]
			for i in x:
			 	y.append(cmath.phase(csi_data[0][i]))
			fig, ax = plt.subplots()
			ax.plot(x,y, color= '#1285D3')
			#plt.legend(['Average', 'First Realization'])
			fig.suptitle('Phase of CSI data')
			plt.show()

		if len(sys.argv) > 1 and sys.argv[1] == 'csipparty':
			x = np.arange(0,len(csi_data[0]),1)
			yALL = []
			y = []
			for i in x:
				v = 0.0;
				for k in range(0,len(csi_data)):
					v = v + cmath.phase(csi_data[k][i])
				y.append(v/k)
			for i in range(0,len(csi_data)):
				temp = []
				for k in x:
					temp.append(cmath.phase((csi_data[i][k])))
				yALL.append(temp)

			fig, ax = plt.subplots()
			for i in range(0,len(yALL)):
				ax.plot(x,yALL[i], linewidth=1.0)
			ax.plot(x,y, linewidth=5.0)
			fig.suptitle('CSI data of all packets + average')
			plt.ylabel('Magnitude [dB]')
			plt.xlabel('Subcarrier number')
			plt.show()
			
		# Option to just write the data to a CSV file to use the data in MATLAB:
		# Not really useful... (CSI data is a string)
		if len(sys.argv) > 1 and sys.argv[1] == 'csv':
			csvData = [['snr', 'cfo', 'csi']]
			for i in range(0,len(snr_data)):
				y = []
				for l in range(0,len(csi_data[i])):
					y.append(csi_data[i][l])
				#print(y)
				temp = [float(snr_data[i]), float(cfo_data[i]), y]
				csvData.append(temp)
			with open('snr.csv', 'w') as csvFile:
				writer = csv.writer(csvFile)
				writer.writerows(csvData)
				csvFile.close()

		# Save the data as a .mat file to process in MATLAB
		# Choose between cfo, csi and snr.
		if len(sys.argv) > 1 and sys.argv[1] == 'matlab':
			if len(sys.argv) == 2 or sys.argv[2] == 'csi':
				if sys.argv[3]:
					name = sys.argv[3]+'.mat'
					sio.savemat(name,{str(sys.argv[3]):csi_data})
				else:
					sio.savemat('csi.mat',{'csi':csi_data})
			elif sys.argv[2] == 'cfo':
				cfo_out = []
				for i in range(0,len(cfo_data)):
					cfo_out.append(float(cfo_data[i]))
				if sys.argv[3]:
					name = sys.argv[3]+'.mat'
					sio.savemat(name,{str(sys.argv[3]):cfo_out})
				else:
					sio.savemat('cfo.mat',{'cfo':cfo_out})
			elif sys.argv[2] == 'snr':
				snr_out = []
				for i in range(0,len(snr_data)):
					snr_out.append(float(snr_data[i]))
				if sys.argv[3]:
					name = sys.argv[3]+'.mat'
					sio.savemat(name,{str(sys.argv[3]):snr_out})
				else:
					sio.savemat('snr.mat',{'snr':snr_out}))
		

if __name__ == '__main__':
	main()
