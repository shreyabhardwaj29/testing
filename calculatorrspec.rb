require "./calci.rb"
require 'rspec'
RSpec.describe Calculator do
    describe '#add' do
    
    context 'when x and y are integers' do
        subject{described_class.new(10,30)}
        it 'returns true' do
            expect(subject.add).to eql(40)
        end
    end

    context 'when x or y is nil' do
        subject{described_class.new(13,nil)}
        it 'returns Enter integer values only' do
            expect(subject.add).to be false
        end
        subject{described_class.new(nil,12)}
        it 'returns Enter integer values only' do
            expect(subject.add).to be false
        end


    end

    context 'when either x or y or both are string' do
        subject{described_class.new(13,'20')}
        it 'returns Enter integer values only' do
            expect(subject.add).to be false
        end
        subject{described_class.new('13',20)}
        it 'returns Enter integer values only' do
            expect(subject.add).to be false
        end
        subject{described_class.new('13','20')}
        it 'returns Enter integer values only' do
            expect(subject.add).to be false
        end
    end



    context 'when x or y or both are negative' do
        subject{described_class.new(-10,20)}
        it 'returns true' do
            expect(subject.add).to eql(10)
        end
        subject{described_class.new(10,-20)}
        it 'returns true' do
            expect(subject.add).to eql(-10)
        end
        subject{described_class.new(-10,-20)}
        it 'returns true' do
            expect(subject.add).to eql(-30)
        end
    end
    end


    describe '#sub' do
    
    context 'when x and y are integers' do
        subject{described_class.new(30,10)}
        it 'returns true' do
            expect(subject.sub).to eql(20)
        end
    end

    context 'when x or y is nil' do
        subject{described_class.new(13,nil)}
        it 'returns Enter integer values only' do
            expect(subject.sub).to be false
        end
        subject{described_class.new(nil,12)}
        it 'returns Enter integer values only' do
            expect(subject.sub).to be false
        end
    end

    context 'when either x or y or both are strings' do
        subject{described_class.new(13,'20')}
        it 'returns Enter integer values only' do
            expect(subject.sub).to be false
        end
        subject{described_class.new("1232",9)}
        it 'returns Enter integer values only' do
            expect(subject.sub).to be false
        end
        subject{described_class.new("1232","9")}
        it 'returns Enter integer values only' do
            expect(subject.sub).to be false
        end
    end
    

    context 'when either x or y or both are negative values' do
        subject{described_class.new(10,-20)}
        it 'returns true' do
            expect(subject.sub).to eql(30)
        end
        subject{described_class.new(-10,20)}
        it 'returns true' do
            expect(subject.sub).to eql(-10)
        end
        subject{described_class.new(-10,-20)}
        it 'returns true' do
            expect(subject.sub).to eql(10)
        end
    end
    end


    describe '#multiply' do
    
    context 'when x and y are integers' do
        subject{described_class.new(30,10)}
        it 'returns true' do
            expect(subject.multiply).to eql(300)
        end
    end

    context 'when x or y is nil' do
        subject{described_class.new(13,nil)}
        it 'returns Enter integer values only' do
            expect(subject.multiply).to be false
        end
        subject{described_class.new(nil,12)}
        it 'returns Enter integer values only' do
            expect(subject.multiply).to be false
        end


    end

    context 'when x or y or both is a string' do
        subject{described_class.new(13,'20')}
        it 'returns Enter integer values only' do
            expect(subject.multiply).to be false
        end
        subject{describe_class.new('20',30)}
        it 'returns Enter integer values only' do
            expect(subject.multiply).to be false
        end
        subject{describe_class.new('20','30')}
        it 'returns Enter integer values only' do
            expect(subject.multiply).to be false
        end
    end

    context 'when either x or y or both are negative' do
        subject{described_class.new(10,-10)}
        it 'returns true' do
            expect(subject.multiply).to eql(-100)
        end

        subject{describe_class.new(-10,30)}
        it 'returns true' do
            expect(subject.multiply).to eql(-300)
        end
        subject{describe_class.new(-10,-30)}
        it 'returns true' do
            expect(subject.multiply).to eql(300)
        end


    end
    end

    describe '#divide' do
    
    context 'when x and y are integers' do
        subject{described_class.new(30,10)}
        it 'returns true' do
            expect(subject.divide).to eql(3)
        end
        subject{described_class.new(30,0)}
        it 'returns Either denominator is zero or you entered wrong input type' do
            expect(subject.divide).to be false
        end
    end

    context 'when x or y is nil' do
        subject{described_class.new(13,nil)}
        it 'returns Enter integer values only' do
            expect(subject.divide).to be false
        end
        subject{described_class.new(nil,12)}
        it 'returns Enter integer values only' do
            expect(subject.divide).to be false
        end
    end

    context 'when x or y or both is a string' do
        subject{described_class.new(13,'20')}
        it 'returns Either denominator is zero or you entered wrong input type' do
            expect(subject.divide).to be false
        end
        subject{describe_class.new('20',30)}
        it 'returns Either denominator is zero or you entered wrong input type' do
            expect(subject.divide).to be false
        end
        subject{describe_class.new('20','30')}
        it 'returns Either denominator is zero or you entered wrong input type' do
            expect(subject.divide).to be false
        end
    end

    context 'when either x or y or both are negative' do
        subject{described_class.new(10,-10)}
        it 'returns true' do
            expect(subject.divide).to eql(0)
        end

        subject{describe_class.new(-10,30)}
        it 'returns true' do
            expect(subject.divide).to eql(-0.333)
        end
        subject{describe_class.new(-10,-30)}
        it 'returns true' do
            expect(subject.divide).to eql(0.333)
        end


    end
    end
end




