class Benchmark

  def run(&block)
    start_time = Time.now
    block.call
    end_time = Time.now
    print end_time - start_time
  end

end

benchmarker = Benchmark.new
benchmarker.run { print "Elapsed Time: " }
