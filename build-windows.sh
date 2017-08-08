cd WebContent
mkdir -p WEB-INF/classes
echo .
javac -d WEB-INF/classes ../src/com/snakes/model/Media.java
echo .
javac -classpath "WEB-INF/classes;WEB-INF/lib/*" -d WEB-INF/classes ../src/com/snakes/model/Movie.java
echo .
javac -classpath "WEB-INF/classes;WEB-INF/lib/*" -d WEB-INF/classes ../src/com/snakes/web/ListMovies.java
echo .
javac -classpath "WEB-INF/classes;WEB-INF/lib/*" -d WEB-INF/classes ../src/com/snakes/web/AddMovie.java
echo .
javac -classpath "WEB-INF/classes;WEB-INF/lib/*" -d WEB-INF/classes ../src/com/snakes/web/SearchMovies.java
echo .
jar -cf snake.war *.jsp images css js WEB-INF ../src/.ebextensions/*.config ../src/.ebextensions/*.json
echo .
if [ -d "/Library/Tomcat/webapps" ]; then
  cp snake.war /Library/Tomcat/webapps
  echo .
fi
mv snake.war ../
echo .
echo "SUCCESS"
