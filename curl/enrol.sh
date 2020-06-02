curl -XPOST -H 'Authorization: token' -H "Content-type: application/json" -d '{
	"programId": "target-program-id",
	"tierId": "target-tier-id",
	"person": {
		"displayName": "add-name",
		"emailAddress": "add-email"
	}
}' 'https://api.pub1.passkit.io/members/member'
