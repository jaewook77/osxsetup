#!/bin/sh
jdk=(
  java7
  java6
)

# install java
echo "installing javas..."
brew tap caskroom/versions
brew cask install ${jdk[@]}

brew install jenv
#echo '#!/bin/sh' > ~/.jenv_init
#echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.jenv_init
#echo 'eval "$(jenv init -)"' >> ~/.jenv_init
#echo 'export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"' >> ~/.jenv_init
#echo "alias jenv_set_java_home='export JAVA_HOME=\"\$HOME/.jenv/versions/\`jenv version-name\`\"'" >> ~/.jenv_init

jenv add $(/usr/libexec/java_home -v 1.7)
jenv add $(/usr/libexec/java_home -v 1.6)
jenv rehash

jenv versions
