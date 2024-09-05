SELECT
	CONCAT(
		'    [', mt.ID, '] = { ',
        IF(mt.Parent > 0, CONCAT('parent = ', mt.Parent), 'children = {}'), ', ',
		'operator = ', mt.Operator,
		', type = ', mt.`Type`,
		', asset = ', mt.Asset,
		' },'
	) AS data
FROM ModifierTree mt
WHERE
	mt.ID IN (
		SELECT pc.ModifierTreeID FROM PlayerCondition pc
		WHERE
			pc.ID IN (
				SELECT apoi.PlayerConditionID FROM AreaPOI apoi
				WHERE
					apoi.UiTextureAtlasMemberID IN (27116) -- rumor icon
					AND apoi.ContinentID = 2601 -- Khaz Algar
					AND apoi.ID != 8053 -- Forging a Pact
			)
	)
	OR mt.parent IN (
		SELECT pc.ModifierTreeID FROM PlayerCondition pc
		WHERE
			pc.ID IN (
				SELECT apoi.PlayerConditionID FROM AreaPOI apoi
				WHERE
					apoi.UiTextureAtlasMemberID IN (27116) -- rumor icon
					AND apoi.ContinentID = 2601 -- Khaz Algar
					AND apoi.ID != 8053 -- Forging a Pact
			)
	)
	OR mt.ID IN (
		SELECT child.asset FROM ModifierTree child
		WHERE child.type = 73 AND child.parent IN (
			SELECT pc.ModifierTreeID FROM PlayerCondition pc
			WHERE
				pc.ID IN (
					SELECT pc.ModifierTreeID FROM PlayerCondition pc
					WHERE
						pc.ID IN (
							SELECT apoi.PlayerConditionID FROM AreaPOI apoi
							WHERE
								apoi.UiTextureAtlasMemberID IN (27116) -- rumor icon
								AND apoi.ContinentID = 2601 -- Khaz Algar
								AND apoi.ID != 8053 -- Forging a Pact
						)
			)
		)
	)
ORDER BY mt.ID
