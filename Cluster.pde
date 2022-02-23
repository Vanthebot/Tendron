public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y)
    {
        // your code here
        Tendril bob = new Tendril(len, Math.random()*2*PI/7, x, y);
        for (int i = 0; i < NUM_STEMS; i++)
          bob.show();
    }
}
