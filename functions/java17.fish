function java17 --wraps=soos --description 'alias java17=soos'
  # Path ke JDK 17
        set -x JAVA_HOME /usr/lib/jvm/java-17-openjdk
        set -x PATH $JAVA_HOME/bin $PATH
        
        echo "Using Java version:"
        java -version
        javac -version
end
