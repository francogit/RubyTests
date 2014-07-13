require 'benchmark'
repetition= 1000
Benchmark.bm(7) do |x|
    x.report 'String' do
        repetition.times do
            options = {'hello' => 'world'}
        end
    end
    x.report 'Symbol' do
        repetition.times do
            options ={ hello: :world}
        end
    end
end
