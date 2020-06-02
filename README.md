# PassKit v4 Membership Enroll Quickstart

**This quckstart is for the PassKit v4 [platform](https://app.passkit.com). These commands do not work for the v2 & v3 API's.**

**If you are looking for the old v2-v3 documentation you can find it [here](https://dev.passkit.net/#introduction)**

**We highly recommend using the v4 platform for new projects as v2 and v3 are scheduled for depreciation**

## Overview

This quickstart is designed to get developers enrolling members to a membership program via rest as quick as possible.
If you believe we have missed something or there are ways we can improve our documentation. Please feel free to create a feature request and add in your thoughts.

## Table of contents

- [Prerequisites](#prerequisites)
- [Enrolling a member](#enrolling-a-member)

## Prerequisites

Before you can enroll members, you will need to have the following:

At least one membership program created in your account with a tier & design. We recommend creating these in the [membership portal](https://app.passkit.com)

We also recommend reading our [quickstart](https://github.com/PassKit/passkit-rest-quickstart) for creating a valid JWT from authorizing requests

## Enrolling a member

The example below shows the method, endpoint, headers and body needed to enrol a new member.

To enroll a new member you will need at lease two things

1. Program id
2. Tier id

The example body below shows an enrollment payload with the default person details configured as well for identification.

#### API client

[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/4c2837581f728efc4fa8)

You can also find this command inside the [curl](./curl) folder in this repo

**POST** - `https://api.pub1.passkit.io/members/member`

**Headers**
`Authorization: token`

**Body**

```json
{
  "programId": "target-program-id",
  "tierId": "target-tier-id",
  "person": {
    "displayName": "add-name",
    "emailAddress": "add-email"
  }
}
```

#### CURL

```sh
curl -XPOST -H 'Authorization: token' -H "Content-type: application/json" -d '{
	"programId": "target-program-id",
	"tierId": "target-tier-id",
	"person": {
		"displayName": "add-name",
		"emailAddress": "add-email"
	}
}' 'https://api.pub1.passkit.io/members/member'
```

A successful enrollment will return the new membership id:

**example**

```
{
    "id": "20tDNDWjawWwnqygGvFhL1"
}
```

Your new members pass can be viewed in the browser in this format: `https://pub1.pskt.io/${id}`

_If your membership program is configured to send welcome emails upon enrollment, there will be a CTA button at the bottom with this link embedded in it_
