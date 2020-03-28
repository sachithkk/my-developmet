INSERT INTO `ipaydb`.`utility_provider` (`template_type`, `code`, `name`, `description`, `created_date`, `created_by`, `status`) 
VALUES ('CUSTOMIZED', 'eZCash', 'eZCash', 'Dialog eZCash', Now(), 'admin', 'A');
	
INSERT INTO `ipaydb`.`utility_account` (`name`, `account_token`, `bm_ref_id`, `ipay_utility_code`, `ipay_wallet_no`, `pincode`, `status`, `created_date`, `created_by`, `utility_provider_id`, `bank_id`, `is_default`)
VALUES ('lofin', '116861k47081i4pmmv8h615jnm2scise7789', 0, 'EZCASH', '777335148', '1234', 'A', Now(), 'admin', (SELECT up.id FROM utility_provider up WHERE up.code = 'eZCash'), (SELECT b.id FROM bank b WHERE b.short_name = 'LOFC'), 'Y');

INSERT INTO `ipaydb`.`utility_merchant` (`utility_code`, `name`, `ext_transactions_enabled`, `status`, `created_date`, `created_by`, `utility_provider_id`, `reference_account_label`, `utility_merchant_category_id`, `ref_type`) 
VALUES ('CEB', 'Ceylon Electricity Board', 'Y', 'P', Now(), 'admin', (SELECT up.id FROM utility_provider up WHERE up.code = 'eZCash'), 'Account Number', (SELECT umc.id FROM utility_merchant_category umc WHERE umc.code = 'ELECT'), 'TX_AUBP');


INSERT INTO `ipaydb`.`utility_merchant` (`utility_code`, `name`, `ext_transactions_enabled`, `status`, `created_date`, `created_by`, `utility_provider_id`, `reference_account_label`, `utility_merchant_category_id`, `ref_type`) 
VALUES ('GSM', 'Dialog Mobile', 'Y', 'P', Now(), 'admin', (SELECT up.id FROM utility_provider up WHERE up.code = 'eZCash'), 'Account Number', (SELECT umc.id FROM utility_merchant_category umc WHERE umc.code = 'TELCO'), 'TX_ATOB');


INSERT INTO `ipaydb`.`utility_merchant` (`utility_code`, `name`, `ext_transactions_enabled`, `status`, `created_date`, `created_by`, `utility_provider_id`, `reference_account_label`, `utility_merchant_category_id`, `ref_type`) 
VALUES ('LECO', 'Lanka Electricity Company', 'Y', 'P', Now(), 'admin', (SELECT up.id FROM utility_provider up WHERE up.code = 'eZCash'), 'Account Number', (SELECT umc.id FROM utility_merchant_category umc WHERE umc.code = 'ELECT'), 'TX_AUBP');
