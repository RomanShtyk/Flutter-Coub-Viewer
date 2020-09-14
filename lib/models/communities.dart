
class Communities {

  int id;
  String title;
  String permalink;
  int subscriptions_count;
  String big_image_url;
  String small_image_url;
  String med_image_url;
  bool i_subscribed;
  Object community_notifications_enabled;
  Object description;

	Communities.fromJsonMap(Map<String, dynamic> map): 
		id = map["id"],
		title = map["title"],
		permalink = map["permalink"],
		subscriptions_count = map["subscriptions_count"],
		big_image_url = map["big_image_url"],
		small_image_url = map["small_image_url"],
		med_image_url = map["med_image_url"],
		i_subscribed = map["i_subscribed"],
		community_notifications_enabled = map["community_notifications_enabled"],
		description = map["description"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = id;
		data['title'] = title;
		data['permalink'] = permalink;
		data['subscriptions_count'] = subscriptions_count;
		data['big_image_url'] = big_image_url;
		data['small_image_url'] = small_image_url;
		data['med_image_url'] = med_image_url;
		data['i_subscribed'] = i_subscribed;
		data['community_notifications_enabled'] = community_notifications_enabled;
		data['description'] = description;
		return data;
	}
}
