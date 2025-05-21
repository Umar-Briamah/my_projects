#!/bin/python3
response = input("Would like some feedback? (yes/no): ").strip().lower()
if response == "yes" or response == 'y':
    print("Sure! What would you like feedback on?")                 
    print("Great! I'm here to help.")
    assistance = input("What do you need assistance with? ").strip().lower()
    if assistance == "code":
        print("I can help with code-related questions.")
    elif assistance == "project":
        print("I can help with project-related questions.")
    elif assistance == "other":
        print("I can help with other inquiries.")
    else:
        print("I'm not sure how to assist with that.")
elif response == "no" or response == 'n':
    print("No problem! If you need anything, just ask.")
else:
    print("Invalid response. Please answer with 'yes(y)' or 'no(n)'.")