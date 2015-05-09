namespace go osmdtth
namespace cpp osmdtth

struct TagValue {
	1: string text,
	2: bool boolean,
	3: optional i64 integer,
	4: optional double real,
}

struct ObjectInfo {
	1: i64 id,
	2: map<string, TagValue> tags,
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

enum RelationMemberType {
	NODE = 0,
	LINE = 1,
	POLYGON = 2,
}

struct RelationMember {
	1: RelationMemberType type,
	2: i64 ref,
	3: string role,
}

struct Relation {
	1: ObjectInfo info,
	2: list<RelationMember> members,
}

struct TileData {
	1: list<Node> nodes,
	2: list<Way> ways,
	3: list<Polygon> polygons,
	4: list<Relation> relations,
}
