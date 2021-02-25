# Setup  
Open terminal, and make a folder for you project.
```bash
cd Documents 
mkdir IvyTutor (you can name this whatever)
cd IvyTutor
``` 
** Its important to note, that Python should be > Python 3.8.0

We will now create a virtual enviroment. Do this by running in "IvyTutor" folder..
```bash
python -m venv env 
```
We will now clones this repository into your folder. Also run this in "IvyTutor" folder. 
```git
git clone https://github.com/IanHShin/Ivy-Tutoring.git
```
After this, run this to activate your virtual enviroment.
```bash 
python env\Scripts\activate 
```
Once this is done, we can navigate to the new "Ivy-Tutoring" folder that we cloned from GitHub. 
```bash
cd Ivy-Tutoring
```
To download all dependencies simply run this. 
```python 
pip3 install -r requirements.txt 
(OR)
pip install -r  requirements.txt
```
We can finally run our local host, by simply typing.
```python 
python manage.py runserver 
(OR)
python3 manage.py runserver
```
Once you follow the development server url, you are all set!



 
