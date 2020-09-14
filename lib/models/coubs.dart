import 'package:flutter_infinite_list/models/categories.dart';
import 'package:flutter_infinite_list/models/channel.dart';
import 'package:flutter_infinite_list/models/communities.dart';
import 'package:flutter_infinite_list/models/dimensions.dart';
import 'package:flutter_infinite_list/models/file_versions.dart';
import 'package:flutter_infinite_list/models/first_frame_versions.dart';
import 'package:flutter_infinite_list/models/image_versions.dart';
import 'package:flutter_infinite_list/models/media_blocks.dart';
import 'package:flutter_infinite_list/models/tags.dart';

class Coubs {
  Object flag;
  Object abuses;
  Object recoubs_by_users_channels;
  bool favourite;
  Object promoted_id;
  Object recoub;
  Object like;
  Object dislike;
  Object reaction;
  bool in_my_best2015;
  int id;
  String type;
  String permalink;
  String title;
  String visibility_type;
  String original_visibility_type;
  int channel_id;
  String created_at;
  String updated_at;
  bool is_done;
  int views_count;
  Object cotd;
  Object cotd_at;
  bool visible_on_explore_root;
  bool visible_on_explore;
  bool featured;
  bool published;
  String published_at;
  bool reversed;
  bool from_editor_v2;
  bool is_editable;
  bool original_sound;
  bool has_sound;
  Object recoub_to;
  File_versions file_versions;
  Image_versions image_versions;
  First_frame_versions first_frame_versions;
  Dimensions dimensions;
  List<int> site_w_h;
  List<int> page_w_h;
  List<int> site_w_h_small;
  List<int> size;
  bool age_restricted;
  bool age_restricted_by_admin;
  bool not_safe_for_work;
  bool allow_reuse;
  bool dont_crop;
  bool banned;
  bool global_safe;
  String audio_file_url;
  dynamic external_download;
  Object application;
  Channel channel;
  Object file;
  String picture;
  String timeline_picture;
  String small_picture;
  Object sharing_picture;
  int percent_done;
  List<Tags> tags;
  List<Categories> categories;
  List<Communities> communities;
  int recoubs_count;
  int remixes_count;
  int likes_count;
  int dislikes_count;
  dynamic raw_video_id;
  bool uploaded_by_ios_app;
  bool uploaded_by_android_app;
  Media_blocks media_blocks;
  String raw_video_thumbnail_url;
  String raw_video_title;
  bool video_block_banned;
  double duration;
  bool promo_winner;
  Object promo_winner_recoubers;
  Object promo_hint;
  Object beeline_best_2014;
  bool from_web_editor;
  bool normalize_sound;
  bool normalize_change_allowed;
  bool best2015_addable;
  Object ahmad_promo;
  Object promo_data;
  Object audio_copyright_claim;
  bool ads_disabled;
  bool is_safe_for_ads;
  List<Object> megafon_contents;
  int position_on_page;

  Coubs.fromJsonMap(Map<String, dynamic> map)
      : flag = map["flag"],
        abuses = map["abuses"],
        recoubs_by_users_channels = map["recoubs_by_users_channels"],
        favourite = map["favourite"],
        promoted_id = map["promoted_id"],
        recoub = map["recoub"],
        like = map["like"],
        dislike = map["dislike"],
        reaction = map["reaction"],
        in_my_best2015 = map["in_my_best2015"],
        id = map["id"],
        type = map["type"],
        permalink = map["permalink"],
        title = map["title"],
        visibility_type = map["visibility_type"],
        original_visibility_type = map["original_visibility_type"],
        channel_id = map["channel_id"],
        created_at = map["created_at"],
        updated_at = map["updated_at"],
        is_done = map["is_done"],
        views_count = map["views_count"],
        cotd = map["cotd"],
        cotd_at = map["cotd_at"],
        visible_on_explore_root = map["visible_on_explore_root"],
        visible_on_explore = map["visible_on_explore"],
        featured = map["featured"],
        published = map["published"],
        published_at = map["published_at"],
        reversed = map["reversed"],
        from_editor_v2 = map["from_editor_v2"],
        is_editable = map["is_editable"],
        original_sound = map["original_sound"],
        has_sound = map["has_sound"],
        recoub_to = map["recoub_to"],
        file_versions = File_versions.fromJsonMap(map["file_versions"]),
        image_versions = Image_versions.fromJsonMap(map["image_versions"]),
        first_frame_versions =
            First_frame_versions.fromJsonMap(map["first_frame_versions"]),
        dimensions = Dimensions.fromJsonMap(map["dimensions"]),
        site_w_h = List<int>.from(map["site_w_h"]),
        page_w_h = List<int>.from(map["page_w_h"]),
        site_w_h_small = List<int>.from(map["site_w_h_small"]),
        size = List<int>.from(map["size"]),
        age_restricted = map["age_restricted"],
        age_restricted_by_admin = map["age_restricted_by_admin"],
        not_safe_for_work = map["not_safe_for_work"],
        allow_reuse = map["allow_reuse"],
        dont_crop = map["dont_crop"],
        banned = map["banned"],
        global_safe = map["global_safe"],
        audio_file_url = map["audio_file_url"],
        external_download = map["external_download"],
        application = map["application"],
        channel = Channel.fromJsonMap(map["channel"]),
        file = map["file"],
        picture = map["picture"],
        timeline_picture = map["timeline_picture"],
        small_picture = map["small_picture"],
        sharing_picture = map["sharing_picture"],
        percent_done = map["percent_done"],
        tags = List<Tags>.from(map["tags"].map((it) => Tags.fromJsonMap(it))),
        categories = List<Categories>.from(
            map["categories"].map((it) => Categories.fromJsonMap(it))),
        communities = List<Communities>.from(
            map["communities"].map((it) => Communities.fromJsonMap(it))),
        recoubs_count = map["recoubs_count"],
        remixes_count = map["remixes_count"],
        likes_count = map["likes_count"],
        dislikes_count = map["dislikes_count"],
        raw_video_id = map["raw_video_id"],
        uploaded_by_ios_app = map["uploaded_by_ios_app"],
        uploaded_by_android_app = map["uploaded_by_android_app"],
        media_blocks = Media_blocks.fromJsonMap(map["media_blocks"]),
        raw_video_thumbnail_url = map["raw_video_thumbnail_url"],
        raw_video_title = map["raw_video_title"],
        video_block_banned = map["video_block_banned"],
        duration = map["duration"],
        promo_winner = map["promo_winner"],
        promo_winner_recoubers = map["promo_winner_recoubers"],
        promo_hint = map["promo_hint"],
        beeline_best_2014 = map["beeline_best_2014"],
        from_web_editor = map["from_web_editor"],
        normalize_sound = map["normalize_sound"],
        normalize_change_allowed = map["normalize_change_allowed"],
        best2015_addable = map["best2015_addable"],
        ahmad_promo = map["ahmad_promo"],
        promo_data = map["promo_data"],
        audio_copyright_claim = map["audio_copyright_claim"],
        ads_disabled = map["ads_disabled"],
        is_safe_for_ads = map["is_safe_for_ads"],
        megafon_contents = map["megafon_contents"],
        position_on_page = map["position_on_page"];

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['flag'] = flag;
    data['abuses'] = abuses;
    data['recoubs_by_users_channels'] = recoubs_by_users_channels;
    data['favourite'] = favourite;
    data['promoted_id'] = promoted_id;
    data['recoub'] = recoub;
    data['like'] = like;
    data['dislike'] = dislike;
    data['reaction'] = reaction;
    data['in_my_best2015'] = in_my_best2015;
    data['id'] = id;
    data['type'] = type;
    data['permalink'] = permalink;
    data['title'] = title;
    data['visibility_type'] = visibility_type;
    data['original_visibility_type'] = original_visibility_type;
    data['channel_id'] = channel_id;
    data['created_at'] = created_at;
    data['updated_at'] = updated_at;
    data['is_done'] = is_done;
    data['views_count'] = views_count;
    data['cotd'] = cotd;
    data['cotd_at'] = cotd_at;
    data['visible_on_explore_root'] = visible_on_explore_root;
    data['visible_on_explore'] = visible_on_explore;
    data['featured'] = featured;
    data['published'] = published;
    data['published_at'] = published_at;
    data['reversed'] = reversed;
    data['from_editor_v2'] = from_editor_v2;
    data['is_editable'] = is_editable;
    data['original_sound'] = original_sound;
    data['has_sound'] = has_sound;
    data['recoub_to'] = recoub_to;
    data['file_versions'] =
        file_versions == null ? null : file_versions.toJson();
    data['image_versions'] =
        image_versions == null ? null : image_versions.toJson();
    data['first_frame_versions'] =
        first_frame_versions == null ? null : first_frame_versions.toJson();
    data['dimensions'] = dimensions == null ? null : dimensions.toJson();
    data['site_w_h'] = site_w_h;
    data['page_w_h'] = page_w_h;
    data['site_w_h_small'] = site_w_h_small;
    data['size'] = size;
    data['age_restricted'] = age_restricted;
    data['age_restricted_by_admin'] = age_restricted_by_admin;
    data['not_safe_for_work'] = not_safe_for_work;
    data['allow_reuse'] = allow_reuse;
    data['dont_crop'] = dont_crop;
    data['banned'] = banned;
    data['global_safe'] = global_safe;
    data['audio_file_url'] = audio_file_url;
    data['external_download'] = external_download;
    data['application'] = application;
    data['channel'] = channel == null ? null : channel.toJson();
    data['file'] = file;
    data['picture'] = picture;
    data['timeline_picture'] = timeline_picture;
    data['small_picture'] = small_picture;
    data['sharing_picture'] = sharing_picture;
    data['percent_done'] = percent_done;
    data['tags'] =
        tags != null ? this.tags.map((v) => v.toJson()).toList() : null;
    data['categories'] = categories != null
        ? this.categories.map((v) => v.toJson()).toList()
        : null;
    data['communities'] = communities != null
        ? this.communities.map((v) => v.toJson()).toList()
        : null;
    data['recoubs_count'] = recoubs_count;
    data['remixes_count'] = remixes_count;
    data['likes_count'] = likes_count;
    data['dislikes_count'] = dislikes_count;
    data['raw_video_id'] = raw_video_id;
    data['uploaded_by_ios_app'] = uploaded_by_ios_app;
    data['uploaded_by_android_app'] = uploaded_by_android_app;
    data['media_blocks'] = media_blocks == null ? null : media_blocks.toJson();
    data['raw_video_thumbnail_url'] = raw_video_thumbnail_url;
    data['raw_video_title'] = raw_video_title;
    data['video_block_banned'] = video_block_banned;
    data['duration'] = duration;
    data['promo_winner'] = promo_winner;
    data['promo_winner_recoubers'] = promo_winner_recoubers;
    data['promo_hint'] = promo_hint;
    data['beeline_best_2014'] = beeline_best_2014;
    data['from_web_editor'] = from_web_editor;
    data['normalize_sound'] = normalize_sound;
    data['normalize_change_allowed'] = normalize_change_allowed;
    data['best2015_addable'] = best2015_addable;
    data['ahmad_promo'] = ahmad_promo;
    data['promo_data'] = promo_data;
    data['audio_copyright_claim'] = audio_copyright_claim;
    data['ads_disabled'] = ads_disabled;
    data['is_safe_for_ads'] = is_safe_for_ads;
    data['megafon_contents'] = megafon_contents;
    data['position_on_page'] = position_on_page;
    return data;
  }
}
