import random

homedir = '/home/zim/'
file = open(homedir + '.dotfiles/scripts/eyecandypy/strings.txt', encoding='utf-8')
content = file.read()
split = content.split("[0]")

print(split[random.randint(0, len(split) - 1)])