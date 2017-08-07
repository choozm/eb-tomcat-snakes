cd WebContent
mkdir -p WEB-INF/classes
echo .
javac -d WEB-INF/classes ../src/com/snakes/model/Media.java
echo .
javac -classpath WEB-INF/lib/*:WEB-INF/classes -d WEB-INF/classes ../src/com/snakes/model/Movie.java
echo .
javac -classpath WEB-INF/lib/*:WEB-INF/classes -d WEB-INF/classes ../src/com/snakes/web/ListMovies.java
echo .
javac -classpath WEB-INF/lib/*:WEB-INF/classes -d WEB-INF/classes ../src/com/snakes/web/AddMovie.java
echo .
javac -classpath WEB-INF/lib/*:WEB-INF/classes -d WEB-INF/classes ../src/com/snakes/web/SearchMovies.java
echo .
jar -cf SNAKE_MOVIES.war *.jsp images css js WEB-INF ../src/.ebextensions/*.config ../src/.ebextensions/*.json
echo .
if [ -d "/Library/Tomcat/webapps" ]; then
  cp SNAKE_MOVIES.war /Library/Tomcat/webapps
  echo .
fi
mv SNAKE_MOVIES.war ../
echo .
echo "SUCCESS"
