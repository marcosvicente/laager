require "rspec"
require "lista"

describe Lista do
  it "should add to lista" do
    klass = Lista.new
    klass.append("Oi")
    klass.append(5)
    klass.append('1/1/2005 14:00:00')
    klass.append(1.5)
    klass.append("Tchau")

    expect(klass.head.value).to eq("Oi")
    expect(klass.head.nextNode.value).to eq(5)
    expect(klass.head.nextNode.nextNode.value).to eq('1/1/2005 14:00:00')
    expect(klass.head.nextNode.nextNode.nextNode.value).to eq(1.5)
    expect(klass.head.nextNode.nextNode.nextNode.nextNode.value).to eq("Tchau")
  end

  it "should be append_after to lista" do
    klass = Lista.new
    klass.append("Oi")
    klass.append(5)
    klass.append_after("Oi", '1/1/2005 14:00:00')

    expect(klass.head.value).to eq("Oi")
    expect(klass.head.nextNode.value).to eq('1/1/2005 14:00:00')
    expect(klass.head.nextNode.nextNode.value).to eq(5)
  end

  it "should delete to lista" do
    klass = Lista.new
    klass.append("Oi")
    klass.append(5)
    klass.append('1/1/2005 14:00:00')

    klass.delete(5)
    expect(klass.head.value).to eq("Oi")
    expect(klass.head.nextNode.value).to eq('1/1/2005 14:00:00')
  end

  it "should be invert list" do
    klass = Lista.new
    klass.append("Oi")
    klass.append(5)
    klass.append('1/1/2005 14:00:00')
    klass.append(1.5)
    klass.append("Tchau")

    
    invert = klass.inverteLista(klass)
    expect(klass.head.value).to eq("Tchau")
    expect(klass.head.nextNode.value).to eq(1.5)
    expect(klass.head.nextNode.nextNode.value).to eq('1/1/2005 14:00:00')
    expect(klass.head.nextNode.nextNode.nextNode.value).to eq(5)
    expect(klass.head.nextNode.nextNode.nextNode.nextNode.value).to eq("Oi")
  end
end