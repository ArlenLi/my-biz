# %load workshop_blog/setup_cloud.py
# # Option 1: Use Cloud Platform (Difficulty level: Easy, like being a boss)

# In[ ]:

get_ipython().system('python --version')


# In[ ]:

get_ipython().system('pip install -U html')


# In[ ]:

get_ipython().system('pip install -U pyqrcode')


# In[ ]:

get_ipython().system('pip install -U config')


# In[ ]:

get_ipython().system('pip install -U backports.tempfile')


# In[ ]:

get_ipython().system('mv docs org_docs')


# ### Download and install WeChat API-2

# In[ ]:

get_ipython().system('yes | pip uninstall itchat')
get_ipython().system('rm -rf ItChat')
get_ipython().system('git clone https://github.com/telescopeuser/ItChat.git')
get_ipython().system('cp -r ItChat/* .')
get_ipython().system('python setup.py install')


# ### Housekeeping after installation

# In[ ]:

get_ipython().system('rm -rf itchat')
get_ipython().system('rm -rf ItChat')
get_ipython().system('rm -rf wxpy')
get_ipython().system('rm -rf README*')
get_ipython().system('rm -rf LICENSE')
get_ipython().system('rm -rf MANIFEST*')
get_ipython().system('rm -rf mkdocs*')
get_ipython().system('rm -rf build')
get_ipython().system('rm -rf dist')
get_ipython().system('rm -rf docs*')
get_ipython().system('rm -rf requirements.txt')
get_ipython().system('rm -rf setup.py')
get_ipython().system('rm -rf *.egg-info')

get_ipython().system('mv org_docs docs')


get_ipython().system('pip install -U google-api-python-client')
get_ipython().system('pip install -U gTTS')
get_ipython().system('apt-get update -y')

# 21 Dec 2017: update: '--allow-unauthenticated', thanks to: MENG EN
# get_ipython().system('apt-get install libav-tools -y')
get_ipython().system('apt-get install libav-tools -y --allow-unauthenticated')

get_ipython().system('avconv -version')


# In[ ]:

print('')
print('+-------------------------------------------------------------------------------------------------+')
print('| Google Cloud Datalab Python 2 setup successful!                              |')
print('| You are now ready to rock! |')
print('+-------------------------------------------------------------------------------------------------+')


# In[ ]:
