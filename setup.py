from setuptools import setup, find_packages

setup(
    name = 'pyepgnotify',
    version = '0.1',
    license='GPLv3',
    url = 'https://github.com/Aikhjarto/pyepgnotify.git',
    download_url = 'https://github.com/Aikhjarto/pyepgnotify/archive/v_01.tar.gz',
    keywords = ['VDR', 'EPG', 'mail', 'notification'],
    author = 'Thomas Wagner',
    author_email = 'wagner-thomas@gmx.at',
    description = 'Reads EPG data from VDR and sends user notification mails when desired programs are found',
    classifies = [ 'Development Status :: 3 - Alpha',
        'Programming Language :: Python :: 3'],
    packages = find_packages(),    
    install_requires = ['pyyaml'],
    entry_points = {
        'console_scripts': ['pyepgnotify=pyepgnotify:epgnotify:main'],
    }
)
