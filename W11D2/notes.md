# Normalized State w/ jBuilder

_JSON is JavaScript Object Notation_

JSON is an open standard file format, and data interchange format, that uses human-readable text to store and transmit data objects consisting of attribute–value pairs and array data types.

Normalizing state is a great to filter our unecessary information like timestamps and password_digest.

The way you organize your store in Redux chagnes the way you access data later on in your components and reducers. If you don't organize your store well, you end up doing more work.

# ENV
`Jbuilder.key_format camelize: :lower`

## Methods

The `!` in indicates it's a jbuilder method.

- `json.set!` can make keys banana-able to whatever is geting pulled. Means I'm going to have evaluate the code after it. Best used when you need to dynamically create a key.

- `json.extract!`: extract the key-value pairs. When you want the objects key to match the column names.

- `json.array!` can extract attributes directly and put them in an array. Note you should never send up an array of objects.

- `json.partial!`

# What is Normalization?

Good state shape removes duplicated information. We take advantage of having ONE source of truth.

- We want instant access - Big O.
- We avoid complex logic in reducers to handle deeplyt nested objects.
- We avoid unnecessary re-renders of connected components.
- Nested objects often times mean you could just use another slice of state.

Every table gets its own slice of state. Every POJO will have its `id` pointing to it.

# Normalizing associated data

- Data with `belongs_to` relationship stores ID of associated data.
- Data with `has_many` relationship stores array of IDs of associated data.

# MISC

 - Normalization entails de duplication of data and storing references to associated data.

 - Benefits of normalizing state in redux means less unnecessary re-renders of connected components.

 - In a jBuilder template, we CANNOT use JavaScript code.

 - jBuilder controls which data to send to the frontend
