namespace go osmdtth
namespace cpp osmdtth

enum ObjectType {
	NODE = 0,
	LINE = 1,
	POLYGON = 2,
	RELATION = 3,
}

struct ObjectRef {
	1: ObjectType type,
	2: i64 id,
}

struct TagValue {
	1: string text,
	2: bool boolean,
	3: optional i64 integer,
	4: optional double real,
}

struct ObjectInfo {
	1: i64 id,
	2: map<i32, TagValue> tags,
}

struct Point {
	1: double x,
	2: double y,
}

struct Node {
	1: ObjectInfo info,
	2: Point point,
}

struct Way {
	1: ObjectInfo info,
	2: list<list<Point>> points,
}

struct Polygon {
	1: ObjectInfo info,
	2: list<list<Point>> points,
	3: Point center,
}

struct RelationMember {
	1: ObjectRef ref,
	2: string role,
}

struct Relation {
	1: ObjectInfo info,
	2: list<RelationMember> members,
}

struct TileData {
	1: list<string> keys,
	2: list<Node> nodes,
	3: list<Way> ways,
	4: list<Polygon> polygons,
	5: list<Relation> relations,
	6: list<set<i32>> keys_index,
}
