-- user
CREATE INDEX user_id_index ON user(user_id);
-- group_info
CREATE INDEX group_id_index ON group_info(group_id);
-- group_member (only select by user_id)
-- CREATE INDEX group_member_group_id_index ON group_member(groups_id);
CREATE INDEX group_member_user_id_index ON group_member(user_id);
-- record (only select by record_id and status)
CREATE INDEX record_id_index ON record(record_id);
CREATE INDEX record_status_index ON record(status);

-- record_item_file(only select by item_id and linked_file_id)
CREATE INDEX record_item_file_item_id_index ON record_item_file(item_id);
CREATE INDEX record_item_file_file_id_index ON record_item_file(linked_file_id);

-- TODO: record_last_access, maybe add hash index to (user_id, record_id)

-- record_comment(only select by linked_record_id)
CREATE INDEX record_comment_index ON record_comment(linked_record_id);

-- category(only select by category_id)
CREATE INDEX category_id_index ON category(category_id);

-- category_group(only select by group_id)
CREATE INDEX category_group_group_id_index ON category_group(group_id);

-- session(only select by value)
CREATE INDEX session_value_index ON session(value);

-- file(only select by file_id)
CREATE INDEX file_id_index ON file(file_id);
