import speech_recognition
import pyttsx3

import speech_recognition as sr

speech_engine = pyttsx3.init('espeak')
speech_engine.setProperty('rate', 150)

def speak(text):
	speech_engine.say(text)
	text_file = open("Output.txt", "w")
	text_file.write(text)
	text_file.close()
	print(text)
	speech_engine.runAndWait()

r = sr.Recognizer()

def listen():
	with sr.Microphone(device_index=9) as source:
		r.adjust_for_ambient_noise(source)
		print("Starting")
		audio = r.listen(source)
		with open("Output.flac", "wb") as f:
			f.write(audio.get_flac_data())
	try:
		return r.recognize_sphinx(audio)
	except sr.UnknownValueError:
		print("Could not understand audio")
	except sr.RequestError as e:
		print("Recog Error; {0}".format(e))

	return ""

speak("Say something!")
speak("I heard you say " + listen())
