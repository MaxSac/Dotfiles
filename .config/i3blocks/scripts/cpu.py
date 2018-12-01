#!/home/maximilian/.local/anaconda3/bin/python 
import psutil
percent_cpu = round(psutil.cpu_percent(interval=1,percpu=False))
temp_cpu = round(psutil.sensors_temperatures()['coretemp'][0][1])
print(str(temp_cpu)+'°C/'+str(percent_cpu)+'%')
