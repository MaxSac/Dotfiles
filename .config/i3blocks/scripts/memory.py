#!/home/maximilian/.local/anaconda3/bin/python
import psutil
output = psutil.virtual_memory()
used_memory = str(round((output.used+output.shared)/ (1024.0 ** 3),1))
print(used_memory+'G/'+str(round(output.percent))+'%')
