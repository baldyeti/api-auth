CREATE USER oauthuser WITH
  LOGIN
  NOSUPERUSER
  INHERIT
  CREATEDB
  CREATEROLE
  NOREPLICATION
  password 'oauthuser531';

DROP TABLE IF EXISTS public.oauth_client_details;
CREATE TABLE public.oauth_client_details
(
  	client_id character varying(255),
	  resource_ids character varying(255),
  	client_secret character varying(255),
  	scope character varying(255),
  	authorized_grant_types character varying(255),
  	web_server_redirect_uri character varying(255),
  	authorities character varying(255),
  	access_token_validity bigint,
	  refresh_token_validity bigint,
	  additional_information character varying(255),
	  autoapprove character varying(255)
);

ALTER TABLE public.oauth_client_details
  OWNER to oauthuser;


Insert into oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove)
	values ('developer','oauth2-resource','$2a$12$Pe0vxhYK8hI7tDWg7Ve9euB8zpU0qrp8/ZFIYl/qBim/BkFcfrvtC','read,write','password,authorization_code,refresh_token,client_credentials',null,'ROLE_DEVELOPER',36000,36000,null,'true');

Insert into oauth_client_details (client_id, resource_ids, client_secret, scope, authorized_grant_types, web_server_redirect_uri, authorities, access_token_validity, refresh_token_validity, additional_information, autoapprove)
	values ('book','oauth2-resource','$2a$12$Pe0vxhYK8hI7tDWg7Ve9euB8zpU0qrp8/ZFIYl/qBim/BkFcfrvtC','read,write','password,authorization_code,refresh_token,client_credentials',null,'ROLE_BOOK_SERVICE',36000,36000,null,'true');

