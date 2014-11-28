-- Changes in dynamic attributes
-- last touched 11.12.2014 by kama

ALTER TABLE materialflowresources_attributevalue ALTER COLUMN value TYPE boolean;

ALTER TABLE materialflowresources_attribute DROP COLUMN required;

ALTER TABLE materialflowresources_attribute ADD COLUMN defaultvalue boolean DEFAULT false;

ALTER TABLE materialflowresources_resource ADD COLUMN storagelocation character varying(255);

ALTER TABLE materialflowresources_resourcecorrection ADD COLUMN oldstoragelocation character varying(255);
ALTER TABLE materialflowresources_resourcecorrection ADD COLUMN newstoragelocation character varying(255);

-- end