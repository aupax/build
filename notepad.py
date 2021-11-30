## AUPA - BIKIN NOTEPAD PAKE BAHASA PYTHON3

from tkinter.filedialog import * #import tkinter package
import tkinter as tk

def saveFile(): #savefile variable
  new_file = asksaveasfile(mode = 'w', filetype = [('text files', '.txt')])
  if new_file is None:
    return
  text = str(entry.get(1.0, END))
  new_file.write(text)
  new_file.close()
  
def openFile(): #openfile variable
  file = askopenfile(mode = 'r', filetype = [('text files', '*.txt')])
  if file is not None:
    content = file.read()
    entry.insert(INSERT, content)
  
def clearFile(): #clearfile variable
  entry.delete(1.0, END)
  
canvas = tk.Tk() #canvas programnya
canvas.geometry("400x600") #resolusi program
canvas.title("Notepad") #title program
canvas.config(bg = "white") #warna bg canvas
top = Frame(canvas)
top.pack(padx = 10, pady = 5, anchor = 'nw') #size canvas

b1 = Button(canvas, text="Open", bg = "white", command = openFile)
b1.pack(in_ = top, side=LEFT) #button open

b2 = Button(canvas, text="Save", bg = "white", command = saveFile)
b2.pack(in_ = top, side=LEFT) #button save

b3 = Button(canvas, text="Clear", bg = "white", command = clearFile)
b3.pack(in_ = top, side=LEFT) #button clear

b4 = Button(canvas, text="Exit", bg = "white", command = exit)
b4.pack(in_ = top, side=LEFT) #button exit

entry = Text(canvas,wrap = WORD, bg = "#AFE1EE", font = ("poppins", 15))
entry.pack(padx = 10, pady = 5, expand = TRUE, fill = BOTH)
#canvas text

canvas.mainloop()
