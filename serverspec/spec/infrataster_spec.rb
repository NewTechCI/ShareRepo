require 'spec_helper'

describe server(:ex) do
    describe http('http://172.17.0.1/') do
        it 'returns 200' do
            expect(response.status).to eq(200)
        end

        it 'example' do
            expect(response.body).to include('example')
        end
    end
end