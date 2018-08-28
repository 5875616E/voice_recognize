
apt-get install -qq python python-dev python-pip build-essential swig libpulse-dev python-dev libportaudio0 libportaudio2 libportaudiocpp0 portaudio19-dev libportaudio2 libportaudiocpp0 portaudio19-dev python-pyaudio python3-pyaudio portaudio19-dev python-all-dev python3-all-dev sox python-pyaudio libsox-fmt-mp3 python-gst0.10 gstreamer0.10-plugins-good gstreamer0.10-plugins-ugly python-gst0.10 gstreamer0.10-plugins-good python-pyaudio libsox-fmt-mp3

pip install SpeechRecognition
pip install wikipedia
pip install pygoogle
pip install nltk
pip install sympy
pip2 install pyalsaaudio
pip2 install pygst
pip install pyttsx3
pip install pocketsphinx
#pip install --upgrade pocketsphinx
 
apt-get remove bluez-alsa
apt-get remove --auto-remove jack
jack_control  stop

#git clone http://people.csail.mit.edu/hubert/git/pyaudio.git
#python pyaudio/setup.py install
#git clone https://github.com/Uberi/speech_recognition

