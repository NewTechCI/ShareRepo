describe server(:ex) do
    before { @url = "http://" + $DOCKER_IP }

    describe http(@url) do
        it 'returns 200' do
            expect(response.status).to eq(200)
        end

        it 'example' do
            expect(response.body).to include('example')
        end
    end
end