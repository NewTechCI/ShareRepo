describe server(:ex) do
    before { @url = "http://" + ENV["DOCKER_HOST"] }

    describe http(@url) do
        it 'returns 200' do
            expect(response.status).to eq(200)
        end

        it 'example�����邩' do
            expect(response.body).to include('example')
        end
    end
end