require 'http'
require 'awesome_print'

# response = HTTP.get("https://data.colorado.gov/resource/4ykn-tg5h.json?principalcity=Meeker")
# awesome_print response.parse
# FIELD NAMES:
# entityid
# entityname
# principaladdress1
# principaladdress2
# principalcity
# principalstate
# principalzipcode
# principalcountry
# mailingaddress1
# mailingaddress2
# mailingcity
# mailingstate
# mailingzipcode
# mailingcountry
# entitystatus
# jurisdictonofformation
# entitytype
# agentfirstname
# agentmiddlename
# agentlastname
# agentsuffix
# agentorganizationname
# agentprincipaladdress1
# agentprincipaladdress2
# agentprincipalcity
# agentprincipalstate
# agentprincipalzipcode
# agentprincipalcountry
# agentmailingaddress1
# agentmailingaddress2
# agentmailingcity
# agentmailingstate
# agentmailingzipcode
# agentmailingcountry
# entityformdate

response = HTTP.get("https://www.benbrougher.tech/hiker/v1/trails")
awesome_print response.parse