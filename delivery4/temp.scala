val inputRDD = sc.textFile("/hduser/input-weather/weather-data1901.txt")

val maxTemp = inputRDD.map{ case line =>
           val quality: String = line.substring(92, 93)
           val sign: Int = if(line.charAt(87) == '+') 1 else -1
           val temp: Int = line.substring(88, 92).toInt
           val year: Int = line.substring(15, 19).toInt
           (quality, year, sign, temp) }.
    filter { case (q, _, _, t ) => q.matches("[01459]") && t != 9999}.
    map { case (_, y, s, t) => ( y, s*t) }.
    reduceByKey({ case (prev, curr) => Math.max(prev, curr) })

maxTemp.saveAsTextFile("/hduser/spark/output-weather")
