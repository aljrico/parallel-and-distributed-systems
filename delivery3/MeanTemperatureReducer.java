import java.io.IOException;

import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.DoubleWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Reducer;

public class MeanTemperatureReducer
  extends Reducer<Text, IntWritable, Text, DoubleWritable> {

  @Override
  public void reduce(Text key, Iterable<IntWritable> values,
      Context context)
      throws IOException, InterruptedException {

    double totalValue = 0.0;
    int count = 0;
    for (IntWritable value : values) {
      totalValue += value.get();
      count += 1;
    }
    context.write(key, new DoubleWritable(totalValue/count));
  }
}
