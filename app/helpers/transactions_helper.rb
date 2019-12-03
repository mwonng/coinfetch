
module TransactionsHelper
    def capture_and_save(currency)
        fetch_data = CaptureService.call(currency.endpoint)

        if fetch_data['error_type'].present? || fetch_data == false
            return false
        end

        last_trans = get_last_transacton_by_id(currency.id)

        unless duplicate_transaction?(fetch_data, last_trans)
            currency.transactions.create(last: fetch_data['last'], bid: fetch_data['bid'], ask: fetch_data['ask'], trans_time: fetch_data['transition_time'])
        end
    end

    def duplicate_transaction?(fetched, latest)
        return  latest&.bid== fetched['bid'].to_f && latest&.ask == fetched['ask'].to_f && latest&.last == fetched['last'].to_f
    end

    def get_last_transacton_by_id(id)
        Transaction.where(currency_id: id).last
    end
    
end
