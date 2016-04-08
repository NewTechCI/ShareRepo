require 'spec_helper'

describe server(:ex) do
    describe http('http://172.17.0.1/') do
        it 'returns 200' do
            expect(response.status).to eq(200)
        end

        it 'response Docker Samples' do
            expect(response.body).to include('Docker Samples')
        end
    end
end