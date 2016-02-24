namespace go osmdtth
namespace cpp osmdt

struct TagValue {
	1: optional string text,
	2: optional bool boolean,
	3: optional i64 integer,
	4: optional double real,
}

struct GeometryRef {
	1: i64 id
	2: string role
}

struct Object {
	1: i64 id,
	2: map<string, TagValue> tags,
}

struct Node {
	1: i64 id, /* local if <0, global if >0 */
	2: double x,
	3: double y,
}

struct Geometry {
	1: i64 id,
	2: list<Node> nodes,
	3: optional Node point,
	4: optional list<i64> line,
	5: optional list<i64> polygon,
}

struct Relation {
	1: i64 left_id,
	2: i64 right_id
	2: string value,
}

struct TileData {
	1: list<Object> objects,
	2: list<Node> nodes,
	3: list<Geometry> geometries,
	5: list<Relation> relations,
}
