describe Person do
  
  context 'with a longer list of attributes' do
    let(:avi_attributes) do
      {
        name: "Avi",
        birthday: "01/29/1984",
        hair_color: "brown",
        eye_color: "brown",
        height: "short",
        weight: "good",
        handed: "lefty",
        complexion: "decent",
        t_shirt_size: "medium",
        wrist_size: "small",
        glove_size: "normal",
        pant_length: "32",
        pant_width: "32"
      }
    end

    it 'will assign an arbitrary number of properties on initialization' do
      avi = Person.new(avi_attributes)
      expect(avi.name).to eq(avi_attributes[:name])
      expect(avi.birthday).to eq(avi_attributes[:birthday])
      expect(avi.hair_color).to eq(avi_attributes[:hair_color])
      expect(avi.eye_color).to eq(avi_attributes[:eye_color])
      expect(avi.height).to eq(avi_attributes[:height])
      expect(avi.weight).to eq(avi_attributes[:weight])
      expect(avi.handed).to eq(avi_attributes[:handed])
      expect(avi.complexion).to eq(avi_attributes[:complexion])
      expect(avi.t_shirt_size).to eq(avi_attributes[:t_shirt_size])
      expect(avi.wrist_size).to eq(avi_attributes[:wrist_size])
      expect(avi.glove_size).to eq(avi_attributes[:glove_size])
      expect(avi.pant_length).to eq(avi_attributes[:pant_length])
      expect(avi.pant_width).to eq(avi_attributes[:pant_width])
    end
  end

  context 'with a different, shorter list of attributes' do
    let(:spencer_attributes) do
      {
        name: "Spencer",
        hair_color: "N/A",
        height: "medium",
        weight: "good",
        handed: "righty"
      }
    end

    it 'will also assign an arbitrary number of properties on initialization' do
      spencer = Person.new(spencer_attributes)
      expect(spencer.name).to eq(spencer_attributes[:name])
      expect(spencer.hair_color).to eq(spencer_attributes[:hair_color])
      expect(spencer.height).to eq(spencer_attributes[:height])
      expect(spencer.weight).to eq(spencer_attributes[:weight])
      expect(spencer.handed).to eq(spencer_attributes[:handed])
    end
  end

end
