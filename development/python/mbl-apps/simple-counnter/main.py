import kivy
from kivy.app import App
from kivy.uix.label import Label
from kivy.uix.gridlayout import GridLayout
from kivy.uix.button import Button
from kivy.uix.widget import Widget
# from kivy.uix.textinput import TextInput
# from kivy.config import Config

# Config.set('kivy', 'keyboard_mode', 'systemandmulti')

class MyGrid(Widget):
    pass
   # def __init__(self, **kwargs):
   #     super(MyGrid, self).__init__(**kwargs)

   #     self.cols = 2
   #     self.inside = GridLayout()
   #     self.inside.cols = 3

   #     self.addition = Button(text="+")
   #     self.substraction = Button(text="-")

   #     self.inside.add_widget(self.addition)
   #     self.inside.add_widget(Label(text="Result"))
   #     self.inside.add_widget(self.substraction)

   #     # self.addition.bind(on_press=)
   #     # self.substraction.bind(on_press=)

   #     self.add_widget(self.inside)

class MyApp(App):
    def build(self):
        return MyGrid()

if __name__ == "__main__":
    MyApp().run()
