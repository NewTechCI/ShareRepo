require 'spec_helper'

describe server(:ex) do
    before { @url = "http://172.17.0.1/"}

    describe http(@url) do
        it 'returns 200' do
            expect(response.status).to eq(200)
        end

        it 'example' do
            expect(response.body).to include('example')
        end
    end
end